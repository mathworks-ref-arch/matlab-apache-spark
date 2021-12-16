function spark1(sparkMaster)
    % spark1 A minimal Spark example
    
    % Copyright, MathWorks 2020
    
    if nargin < 1
        sparkMaster = 'local';
    end
    import matlab.compiler.mlspark.*
         
    props = { ...
        'spark.executorEnv.MCR_CACHE_ROOT', '/tmp/matlabapp'; ...
        'spark.jars.packages', 'io.delta:delta-core_2.11:0.6.1'; ...
        'spark.jars', 'file:///local/EI-DTST/Projects/ASML/vcp/Software/MATLAB/sys/modules/spark-2.4.7/delta-core_2.11-0.6.1.jar'; ...
        'spark.sql.extensions', 'io.delta.sql.DeltaSparkSessionExtension'; ...
        'spark.sql.catalog.spark_catalog', 'org.apache.spark.sql.delta.catalog.DeltaCatalog'; ...
        'spark.logConf', 'true'; ...
        ... spark.executor.cores will set how many cores one executor may use. 
        ... spark.cores.max will set the total number of cores used
        ... This means the total number of executors used will be
        ... numExec = floor(spark.cores.max / sparkspark.executor.cores)
        ... This means the total number of cores used will be
        ... totCores = numExec * spark.executor.cores
        'spark.executor.cores', '4'; ...
        'spark.cores.max', '10'; ...
        ...'spark.submit.deployMode', 'cluster'; ...
        };

    sparkProperties = containers.Map(props(:,1), props(:,2));
    
    conf = SparkConf( ...
        'Master', sparkMaster,...
        'AppName',[mfilename, '-', datestr(now,30)], ...
        'SparkProperties',sparkProperties, ...
        "SparkVersion", "2" ...
        );
    
    tic;
    try
        spark = SparkSession(conf);
    catch ME
        fprintf(2, 'Problems brewing\n%s\n', ME.message);
    end
    toc
    
    thisFile = [mfilename('fullpath'), '.m'];

    txt = spark.read.format("text").load(addFileProtocol(thisFile));
    
    txt.count()
    txt.head()
    txt.show(20,false)
    
end