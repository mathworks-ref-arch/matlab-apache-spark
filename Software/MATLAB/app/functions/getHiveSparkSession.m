function spark = getHiveSparkSession(appName, sparkMaster)
    % getHiveSparkSession Get a Spark Session for Hive
    %
    % Configuring Spark to work with Hive entails a fair bit of
    % configuration, and this function will need some prior work to connect
    % correctly to a Spark cluster.
    %
    % Please refer to the documentation on this in Documentation/Hive.md
    % for further information.
    %
    % When the configuration is setup correctly, a Spark session can be
    % acquired just like with a non-hive cluster, i.e.
    %
    %  spark = getHiveSparkSession('mysession')
    
    % Copyright 2021 MathWorks Inc.
    
    java.lang.System.clearProperty("javax.xml.transform.TransformerFactory")
    
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
        'SparkProperties', getDefaultHiveProperties ...
        );
    
    spark = matlab.compiler.mlspark.SparkSession(conf);
    
end %getHiveSparkSession