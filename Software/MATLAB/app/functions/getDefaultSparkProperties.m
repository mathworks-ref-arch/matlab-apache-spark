function [sparkProperties] = getDefaultSparkProperties(varargin)
    % getDefaultSparkProperties Default Properties for Apache Spark
    %
    % Fetch the default properties using:
    %   props = getDefaultSparkProperties;
    
    % Copyright 2021 MathWorks, Inc.
    
    extraJarFiles = matlab.sparkutils.getMatlabSparkExtraJars();

    deltaIdx = contains(extraJarFiles, "delta-core");
    if deltaIdx
        deltaFile = extraJarFiles{deltaIdx};
        [~, deltaCoreVersion] = fileparts(deltaFile);
        deltaProps = { ...
            'spark.jars.packages', ['io.delta:', deltaCoreVersion]; ...
            'spark.sql.extensions', 'io.delta.sql.DeltaSparkSessionExtension'; ...
            'spark.sql.catalog.spark_catalog', 'org.apache.spark.sql.delta.catalog.DeltaCatalog'; ...
            }
    end

    % extraJarFiles(extraJarFiles.contains("delta"))=[];
    fileJarFiles = cellfun(@(x) sprintf('file://%s', x), ...
        extraJarFiles, 'UniformOutput', false);
    jarString = strjoin(fileJarFiles, ',');

    props = { ...
        'spark.executorEnv.MCR_CACHE_ROOT', '/tmp/matlabapp'; ...
        'spark.jars', jarString; ...
        'spark.logConf', 'true'; ...
        ... spark.executor.cores will set how many cores one executor may use.
        ... spark.cores.max will set the total number of cores used
        ... This means the total number of executors used will be
        ... numExec = floor(spark.cores.max / sparkspark.executor.cores)
        ... This means the total number of cores used will be
        ... totCores = numExec * spark.executor.cores
        'spark.executor.cores', '2'; ...
        'spark.cores.max', '6'; ...
        ...'spark.submit.deployMode', 'cluster'; ...
        ...'spark.submit.deployMode', 'client'; ...
        };

    if deltaIdx
        props = [props; deltaProps];
    end
    
    sparkProperties = containers.Map(props(:,1), props(:,2));
    
    
end %function
