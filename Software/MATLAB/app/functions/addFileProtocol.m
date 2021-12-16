function filePath = addFileProtocol( filePath )
    % addFileProtocol Add 'file://' to local paths for Unix
    %
    % For Windows, this function doesn't change anything.
    %
    % Example:
    % fn = '/my/file.csv'
    % fpfn = addFileProtocol(fn)
    % fpfn =
    %     'file:///my/file.csv'
    % sn = "/tmp/another/file.parquet"
    % fpsn = addFileProtocol(sn)
    % fpsn = 
    %     "file:///tmp/another/file.parquet"
    
    % Copyright 2020 MathWorks, Inc.

    if isunix
        if ischar(filePath)
            filePath = ['file://', filePath];
        elseif isstring(filePath)
            filePath = "file://" + filePath;
        else
            error('SPARK:ERROR', 'Only string or char allowed as argument');
        end
    end
    
        
end
