function spark = getDefaultSparkSession(appName, sparkMaster)
    % getDefaultSparkSession Get the Default Spark Session
    
    % Copyright 2020 MathWorks Inc.
    
    MSC = matlab.sparkutils.Config.getInMemoryConfig();
    if nargin < 2
        sparkMaster = MSC.Master;
        if nargin < 1 || isempty(appName)
            appName = ['matlab-spark-', datestr(now,30)];
        end
    end
    
    conf = createJavaSparkConf( ...
        'Master', sparkMaster,...
        'AppName', appName, ...
        'SparkProperties', getDefaultSparkProperties ...
        );
    
    spark = matlab.compiler.mlspark.SparkSession(conf);
    
end