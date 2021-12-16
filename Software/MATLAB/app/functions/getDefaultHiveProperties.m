function sparkProperties = getDefaultHiveProperties(varargin)
    % getDefaultHiveProperties Default Properties for Spark with Hive
    %
    % Configuring Spark to work with Hive entails a fair bit of
    % configuration, and this function will need some prior work to connect
    % correctly to a Spark cluster.
    %
    % Please refer to the documentation on this in Documentation/Hive.md
    % for further information.
    %
    % This function, in general, is not meant to be called by the user.
    % It's called by the getHiveSparkSession method.
    % 
    % Fetch the default properties using:
    %   props = getDefaultHiveProperties;
    
    % Copyright 2021 MathWorks, Inc.
    
    extraJarFiles = matlab.sparkutils.getMatlabSparkExtraJars();
    
    % Check that we have all Jars needed
    fileJarFiles = cellfun(@(x) sprintf('%s', x), ...
        extraJarFiles, 'UniformOutput', false);

    jarString = strjoin(fileJarFiles, pathsep);
    
    props = { ...
        'spark.executorEnv.MCR_CACHE_ROOT', '/tmp/matlabapp'; ...
        'spark.jars', jarString; ...
        'spark.sql.hive.metastore.jars', jarString; ...
        'spark.sql.warehouse.dir', '/user/hive/warehouse'; ...
        'spark.sql.catalogImplementation', 'hive'; ...
        'spark.logConf', 'true'; ...
        ... spark.executor.cores will set how many cores one executor may use.
        ... spark.cores.max will set the total number of cores used
        ... This means the total number of executors used will be
        ... numExec = floor(spark.cores.max / sparkspark.executor.cores)
        ... This means the total number of cores used will be
        ... totCores = numExec * spark.executor.cores
        'spark.executor.cores', '1'; ...
        'spark.cores.max', '2'; ...
        };
    
    sparkProperties = containers.Map(props(:,1), props(:,2));
    
end %getDefaultHiveProperties
