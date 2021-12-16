function result = getSystemSparkVersion(~)
    % getSystemSparkVersion Query Spark about its version
    
    % Copyright 2020 The MathWorks, Inc.
    
    SPARK_VERSION_DETECTION_STR = "\\\s+version\s+";
    
    sparkHome = getenv('SPARK_HOME');
    sparkVersionCmd = fullfile(sparkHome, 'bin', 'spark-shell --version');
    
    [status, versionTxt] = system(sparkVersionCmd);
    
    if ~status
        tok = regexp(versionTxt, SPARK_VERSION_DETECTION_STR + "([0-9.]+)\s*\n", "tokens", "once");
        if isempty(tok)
            error('SPARK:Error', 'Couldn''t deduce Spark version by querying the Spark found in $SPARK_HOME');
        end
        result = string(tok{1});
    else
        error('SPARK:Error', 'Couldn''t deduce Spark version by querying the Spark found in $SPARK_HOME');
    end
end