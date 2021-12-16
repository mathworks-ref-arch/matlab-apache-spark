function t = dataframe2table( ds )
    % dataframe2table Utility function to convert a MATLAB Dataframe to Table
    %
    % Converts a MATLAB Spark Dataframe to a MATLAB Table
    %
    % This is a helper function for compiler.matlab.mlspark.Dataset/table.
    % It takes an argument of type org.apache.spark.sql.Dataset and
    % converts this to a MATLAB table.
    %
    % It can be used directly, but it's recommended to use the table method
    % of the Dataset object, e.g.
    %
    % % spark is a spark session
    % outages = spark.read.format('csv')...
    %      .option('header','true')...
    %      .option('inferSchema','true')...
    %      .load(addFileProtocol(which('outages.csv')));
    %
    % T = table(outages.limit(10));
    
    % Copyright 2020 MathWorks, Inc.
    
    % Get fields and rows
    fields = ds.schema().fields();
    rows = ds.collectAsList();

    % Call the Java shim to get the MATLAB dataframe representation
    matlabDataFrame = com.mathworks.SparkUtility.getMatlabDataframe(rows, fields);
    
 
    names = string( matlabDataFrame.VariableNames );
    types = string( matlabDataFrame.VariableTypes );
    numColumns = numel( types );
    c = cell( 1, numColumns );
    for columnIndex = 1:numColumns
        switch types(columnIndex)
            case "string"
                c{columnIndex} = string( matlabDataFrame.VariableValues.get( columnIndex - 1 ) );
            case "boolean"
                valArray = matlabDataFrame.VariableValues.get(columnIndex - 1);
                N = numel(valArray);
                outVal = zeros(N, 1, 'logical');
                for k=1:N
                    outVal(k) =  valArray(k).equals(true);
                end
                c{columnIndex} = outVal;
            case {'integer', 'float', 'double', 'long'}
                
                valArray = matlabDataFrame.VariableValues.get(columnIndex - 1);
                
                outVal = [];
                for vCount = 1:numel(valArray)
                    if isempty(valArray(vCount))
                        % Insert a NaN instead
                        outVal(vCount)=NaN;
                    else
                        % Use the value
                        outVal(vCount)=valArray(vCount);
                    end
                end
                
                % Cast into a type accurate column
                switch types(columnIndex)
                    case 'double'
                        c{columnIndex} = double(outVal)';
                    case 'float'
                        c{columnIndex} = single(outVal)';
                    case 'integer'
                        c{columnIndex} = int32(outVal)';
                    case 'long'
                        c{columnIndex} = int64(outVal)';
                    otherwise
                        % Should not get here.
                end
            case "timestamp"
                components = com.mathworks.SparkUtility.getDateComponents( matlabDataFrame.VariableValues.get( columnIndex - 1 ) );
                c{columnIndex} = datetime( ...
                    components.Year, ...
                    components.Month, ...
                    components.Day, ...
                    components.Hours, ...
                    components.Minutes, ...
                    components.Seconds, ...
                    components.Milliseconds, ...
                    'TimeZone', 'UTC' );
            case "binary"
                
                blobArray = matlabDataFrame.VariableValues.get(columnIndex - 1);
                
                outVal = {};
                for bCount = 0:blobArray.size-1  % Java 0-indexing
                    if isempty(blobArray.get(bCount))
                        % Insert a NaN instead
                        outVal{bCount+1}=NaN;    % MATLAB 1-indexing
                    else
                        % Use the value
                        outVal{bCount+1}=blobArray.get(bCount)'; % MATLAB 1-indexing
                    end
                end
                
                c{columnIndex} = outVal';
            case "date"
                c{columnIndex} = getDateCol(matlabDataFrame.VariableValues.get(columnIndex - 1));
            case "array"
                c{columnIndex} = getArrayCol(matlabDataFrame.VariableValues.get(columnIndex - 1));
            case "struct"
                c{columnIndex} = getStructCol(matlabDataFrame.VariableValues.get(columnIndex - 1));
            otherwise
                disp( types(columnIndex) )
                c{columnIndex} = matlabDataFrame.VariableValues.get( columnIndex - 1 );
        end
    end
    t = table( c{:}, ...
        'VariableNames', names );
end

function structCol = getStructCol(values)
    N = numel(values);
    for k=1:N
        R = values(k);
        sc = R.schema;
        structFields = sc.fieldNames;
        S = struct;
        NF = R.length;
        for fIdx = 1:NF
           fieldName = string(structFields(fIdx));
           fieldValue = R.get(fIdx-1);
           if isjava(fieldValue)
               fieldValue = convertJavaValue(fieldValue);
           end
           S.(fieldName) = fieldValue;
        end
        structCol(k) = S; %#ok<AGROW>
    end    
    structCol = structCol(:);
end

function fieldValue = convertJavaValue(fieldValue)
    if ~isjava(fieldValue)
        return;
    end
    CFV = class(fieldValue);
    switch CFV
        case 'java.sql.Timestamp'
            fieldValue = datetime(string(fieldValue.toString));
        case 'org.apache.spark.sql.catalyst.expressions.GenericRowWithSchema'
            fieldValue = getStructCol(fieldValue);
        case 'java.util.ArrayList'
            fieldValue = convertJavaArray(fieldValue);
        case 'scala.collection.mutable.WrappedArray$ofRef'
            fieldValue = convertJavaArray(com.mathworks.scala.SparkUtilityHelper.WrappedArrayRefToList(fieldValue));
        otherwise
            error('SPARK:ERROR', 'Unsupported type in conversion: %s\n', CFV);
    end
end

function matlabValue = convertJavaArray(javaValue)
    N = javaValue.size;
    matlabValue = cell(1,N);
    for k=1:N
        matlabValue{k} = convertJavaValue(javaValue.get(k-1));
    end
    matlabValue = smoothData(matlabValue);
end

function arrayCol = getArrayCol(values)
    N = values.size;
    arrayCol = cell(N, 1);
    for k=1:N
        V = values.get(k-1);
        C = V.size;
        CE = cell(1,C);
        for cIndex = 1:C
            VV = V.get(cIndex-1);
            CE{cIndex} = convertJavaValue(VV);
        end
        arrayCol{k} = CE;
    end
    arrayCol = smoothData(arrayCol);
end

function smoothData = smoothData(data)
    % smoothData Changes data of same type and size to be just one element
    %
    % If data isn't smoothened, it can create a table like this:
    % T =
    %   2×1 table
    %     col_fail
    %   ____________
    %   {1×3 double}
    %   {1×3 double}
    %
    % Instead of the more optimal
    %
    % T =
    %   2×1 table
    %       col_fail
    %   _________________
    %   4.9    2.8      5
    %   4.5    6.8    9.6
    %
    %     if iscell(data{1})
    %         smoothData = data;
    %         return;
    %     end
    numEntries = numel(data);
    szData = size(data{1});
    classData = class(data{1});
    isSmooth = true;
    for k=2:numEntries
        if ~isequal(szData, size(data{k})) ...
                || ~isequal(classData, class(data{k}))
            isSmooth = false;
            break;
        end
    end
    if isSmooth
        smoothData = [data{:}];
        smoothData = reshape(smoothData, numEntries, szData(2));
    else
        smoothData = data;
    end
end

function dateCol = getDateCol(values)
    N = numel(values);
    for k=1:N
        V = values(k);
        if isempty(V)
            dateCol(k) = NaT; %#ok<AGROW>
        else
            dateCol(k) =  datetime(string(V.toString)); %#ok<AGROW>
        end
    end
    dateCol = dateCol(:);
end

