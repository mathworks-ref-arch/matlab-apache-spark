function jArray = javaobj2array( varargin )
    % JAVAOBJ2ARRAY Function to marshal separate Java objects into an array.
    %
    % All objects must be of the same type
    % Example:
    %  % ds is a Dataset
    %  ja = javaobj2array(ds.col("Origin"), ds.col("Destination"));
    
    % Copyright 2020 MathWorks, Inc.
    
    N = length(varargin);
    c1 = class(varargin{1});
    for k=2:N
        ck = class(varargin{k});
        if ~strcmp(c1,ck)
            error(['Element 1 and element %d are of different types.\n', ...
                '\t"%s" and "%s"\n'], k, c1, ck);
        end
    end
    jArray = javaArray(c1, N);
    
    for k=1:N
       jArray(k) = varargin{k}; 
    end
end
