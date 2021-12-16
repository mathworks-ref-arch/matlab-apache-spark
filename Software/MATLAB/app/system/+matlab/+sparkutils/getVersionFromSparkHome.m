function sparkVer = getVersionFromSparkHome()
    % getVersionFromSparkHome Retrieve version from SPARK_HOME
    
    % Copyright 2021 The MathWorks, Inc.
    
    sparkHome = getenv('SPARK_HOME');
    if isempty(sparkHome)
        error('SPARK:Error', 'No SPARK_HOME environment variable defined');
    end
    
    [~, sparkEnd] = fileparts(sparkHome);
    tok = regexp(sparkEnd, 'spark-([^-]+)-', 'tokens', 'once');
    
    if ~isempty(tok)
        sparkVer = string(tok{1});
    else
        % Fall back to calling Spark Shell and extract version
        sparkVer = matlab.sparkutils.getSystemSparkVersion();
    end
    
end