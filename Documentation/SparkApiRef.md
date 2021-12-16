# MATLAB Interface *for Apache Spark*
## API Reference

Documentation generation settings:

* Including class level help text
* Omitting constructor help text
* Excluding inherited methods
* Excluding default MATLAB classes


## Package  *matlab.compiler.mlspark*


### Classes

* [matlab.compiler.mlspark.RelationalGroupedDataset](#matlabcompilermlsparkrelationalgroupeddataset)
* [matlab.compiler.mlspark.Catalog](#matlabcompilermlsparkcatalog)
* [matlab.compiler.mlspark.DataFrameReader](#matlabcompilermlsparkdataframereader)
* [matlab.compiler.mlspark.DataFrameWriter](#matlabcompilermlsparkdataframewriter)
* [matlab.compiler.mlspark.SparkSession](#matlabcompilermlsparksparksession)
* [matlab.compiler.mlspark.Column](#matlabcompilermlsparkcolumn)
* [matlab.compiler.mlspark.Dataset](#matlabcompilermlsparkdataset)

### Subpackage  *matlab.compiler.mlspark.functions*

### Functions

* [matlab.compiler.mlspark.functions.abs](#matlabcompilermlsparkfunctionsabs)
* [matlab.compiler.mlspark.functions.acos](#matlabcompilermlsparkfunctionsacos)
* [matlab.compiler.mlspark.functions.acosh](#matlabcompilermlsparkfunctionsacosh)
* [matlab.compiler.mlspark.functions.add_months](#matlabcompilermlsparkfunctionsadd_months)
* [matlab.compiler.mlspark.functions.approx_count_distinct](#matlabcompilermlsparkfunctionsapprox_count_distinct)
* [matlab.compiler.mlspark.functions.asin](#matlabcompilermlsparkfunctionsasin)
* [matlab.compiler.mlspark.functions.asinh](#matlabcompilermlsparkfunctionsasinh)
* [matlab.compiler.mlspark.functions.atan](#matlabcompilermlsparkfunctionsatan)
* [matlab.compiler.mlspark.functions.atan2](#matlabcompilermlsparkfunctionsatan2)
* [matlab.compiler.mlspark.functions.atanh](#matlabcompilermlsparkfunctionsatanh)
* [matlab.compiler.mlspark.functions.ceil](#matlabcompilermlsparkfunctionsceil)
* [matlab.compiler.mlspark.functions.column](#matlabcompilermlsparkfunctionscolumn)
* [matlab.compiler.mlspark.functions.cos](#matlabcompilermlsparkfunctionscos)
* [matlab.compiler.mlspark.functions.cosh](#matlabcompilermlsparkfunctionscosh)
* [matlab.compiler.mlspark.functions.current_timestamp](#matlabcompilermlsparkfunctionscurrent_timestamp)
* [matlab.compiler.mlspark.functions.date_add](#matlabcompilermlsparkfunctionsdate_add)
* [matlab.compiler.mlspark.functions.date_format](#matlabcompilermlsparkfunctionsdate_format)
* [matlab.compiler.mlspark.functions.date_sub](#matlabcompilermlsparkfunctionsdate_sub)
* [matlab.compiler.mlspark.functions.dayofmonth](#matlabcompilermlsparkfunctionsdayofmonth)
* [matlab.compiler.mlspark.functions.dayofweek](#matlabcompilermlsparkfunctionsdayofweek)
* [matlab.compiler.mlspark.functions.dayofyear](#matlabcompilermlsparkfunctionsdayofyear)
* [matlab.compiler.mlspark.functions.exp](#matlabcompilermlsparkfunctionsexp)
* [matlab.compiler.mlspark.functions.floor](#matlabcompilermlsparkfunctionsfloor)
* [matlab.compiler.mlspark.functions.from_unixtime](#matlabcompilermlsparkfunctionsfrom_unixtime)
* [matlab.compiler.mlspark.functions.from_utc_timestamp](#matlabcompilermlsparkfunctionsfrom_utc_timestamp)
* [matlab.compiler.mlspark.functions.hour](#matlabcompilermlsparkfunctionshour)
* [matlab.compiler.mlspark.functions.isnan](#matlabcompilermlsparkfunctionsisnan)
* [matlab.compiler.mlspark.functions.isnull](#matlabcompilermlsparkfunctionsisnull)
* [matlab.compiler.mlspark.functions.lag](#matlabcompilermlsparkfunctionslag)
* [matlab.compiler.mlspark.functions.lit](#matlabcompilermlsparkfunctionslit)
* [matlab.compiler.mlspark.functions.log](#matlabcompilermlsparkfunctionslog)
* [matlab.compiler.mlspark.functions.log10](#matlabcompilermlsparkfunctionslog10)
* [matlab.compiler.mlspark.functions.log1p](#matlabcompilermlsparkfunctionslog1p)
* [matlab.compiler.mlspark.functions.log2](#matlabcompilermlsparkfunctionslog2)
* [matlab.compiler.mlspark.functions.max](#matlabcompilermlsparkfunctionsmax)
* [matlab.compiler.mlspark.functions.mean](#matlabcompilermlsparkfunctionsmean)
* [matlab.compiler.mlspark.functions.min](#matlabcompilermlsparkfunctionsmin)
* [matlab.compiler.mlspark.functions.minute](#matlabcompilermlsparkfunctionsminute)
* [matlab.compiler.mlspark.functions.month](#matlabcompilermlsparkfunctionsmonth)
* [matlab.compiler.mlspark.functions.pow](#matlabcompilermlsparkfunctionspow)
* [matlab.compiler.mlspark.functions.round](#matlabcompilermlsparkfunctionsround)
* [matlab.compiler.mlspark.functions.second](#matlabcompilermlsparkfunctionssecond)
* [matlab.compiler.mlspark.functions.sin](#matlabcompilermlsparkfunctionssin)
* [matlab.compiler.mlspark.functions.sinh](#matlabcompilermlsparkfunctionssinh)
* [matlab.compiler.mlspark.functions.slice](#matlabcompilermlsparkfunctionsslice)
* [matlab.compiler.mlspark.functions.sqrt](#matlabcompilermlsparkfunctionssqrt)
* [matlab.compiler.mlspark.functions.sum](#matlabcompilermlsparkfunctionssum)
* [matlab.compiler.mlspark.functions.tan](#matlabcompilermlsparkfunctionstan)
* [matlab.compiler.mlspark.functions.tanh](#matlabcompilermlsparkfunctionstanh)
* [matlab.compiler.mlspark.functions.to_date](#matlabcompilermlsparkfunctionsto_date)
* [matlab.compiler.mlspark.functions.to_json](#matlabcompilermlsparkfunctionsto_json)
* [matlab.compiler.mlspark.functions.to_timestamp](#matlabcompilermlsparkfunctionsto_timestamp)
* [matlab.compiler.mlspark.functions.to_utc_timestamp](#matlabcompilermlsparkfunctionsto_utc_timestamp)
* [matlab.compiler.mlspark.functions.unix_timestamp](#matlabcompilermlsparkfunctionsunix_timestamp)
* [matlab.compiler.mlspark.functions.weekofyear](#matlabcompilermlsparkfunctionsweekofyear)
* [matlab.compiler.mlspark.functions.when](#matlabcompilermlsparkfunctionswhen)
* [matlab.compiler.mlspark.functions.window](#matlabcompilermlsparkfunctionswindow)
* [matlab.compiler.mlspark.functions.year](#matlabcompilermlsparkfunctionsyear)


## Package  *compiler.build.spark*


### Classes

* [compiler.build.spark.SparkBuilder](#compilerbuildsparksparkbuilder)
* [compiler.build.spark.File](#compilerbuildsparkfile)
* [compiler.build.spark.JavaClass](#compilerbuildsparkjavaclass)
* [compiler.build.spark.ArgTypeInfo](#compilerbuildsparkargtypeinfo)

### Subpackage  *compiler.build.spark.buildtype*


### Classes

* [compiler.build.spark.buildtype.BaseType](#compilerbuildsparkbuildtypebasetype)
* [compiler.build.spark.buildtype.JavaLib](#compilerbuildsparkbuildtypejavalib)
* [compiler.build.spark.buildtype.SparkApi](#compilerbuildsparkbuildtypesparkapi)
* [compiler.build.spark.buildtype.SparkTall](#compilerbuildsparkbuildtypesparktall)

### Subpackage  *compiler.build.spark.types*


### Classes

* [compiler.build.spark.types.ArgType](#compilerbuildsparktypesargtype)
* [compiler.build.spark.types.Boolean](#compilerbuildsparktypesboolean)
* [compiler.build.spark.types.Double](#compilerbuildsparktypesdouble)
* [compiler.build.spark.types.Float](#compilerbuildsparktypesfloat)
* [compiler.build.spark.types.Integer](#compilerbuildsparktypesinteger)
* [compiler.build.spark.types.Long](#compilerbuildsparktypeslong)
* [compiler.build.spark.types.Short](#compilerbuildsparktypesshort)
* [compiler.build.spark.types.String](#compilerbuildsparktypesstring)

## Package  *matlab.sparkutils*

### Functions

* [matlab.sparkutils.getMatlabSparkUtilityFullName](#matlabsparkutilsgetmatlabsparkutilityfullname)
* [matlab.sparkutils.datatypeMapper](#matlabsparkutilsdatatypemapper)
* [matlab.sparkutils.getMatlabSparkExtraJars](#matlabsparkutilsgetmatlabsparkextrajars)
* [matlab.sparkutils.getMatlabSparkUtilityVersion](#matlabsparkutilsgetmatlabsparkutilityversion)
* [matlab.sparkutils.getSystemSparkVersion](#matlabsparkutilsgetsystemsparkversion)
* [matlab.sparkutils.getVersionFromSparkHome](#matlabsparkutilsgetversionfromsparkhome)
* [matlab.sparkutils.queryMaven](#matlabsparkutilsquerymaven)


### Classes

* [matlab.sparkutils.Config](#matlabsparkutilsconfig)
* [matlab.sparkutils.JavaWriter](#matlabsparkutilsjavawriter)
* [matlab.sparkutils.SparkDataframeDatastore](#matlabsparkutilssparkdataframedatastore)
* [matlab.sparkutils.SparkSessionHandler](#matlabsparkutilssparksessionhandler)
* [matlab.sparkutils.StringWriter](#matlabsparkutilsstringwriter)
* [matlab.sparkutils.PomDep](#matlabsparkutilspomdep)
* [matlab.sparkutils.PomGenerator](#matlabsparkutilspomgenerator)
* [matlab.sparkutils.SparkJar](#matlabsparkutilssparkjar)


### Standalone Functions

* [addFileProtocol](#addfileprotocol)
* [addSerializable](#addserializable)
* [assertUniformClass](#assertuniformclass)
* [buildMatlabSparkUtility](#buildmatlabsparkutility)
* [buildSparkJarTask](#buildsparkjartask)
* [createJavaSparkConf](#createjavasparkconf)
* [createSparkSchemaFromMatlabType](#createsparkschemafrommatlabtype)
* [dataframe2table](#dataframe2table)
* [dataset2table](#dataset2table)
* [findFileRecursively](#findfilerecursively)
* [getPersistentSparkSession](#getpersistentsparksession)
* [getSparkApiRoot](#getsparkapiroot)
* [getSparkEnvironmentType](#getsparkenvironmenttype)
* [getSparkJarsLocation](#getsparkjarslocation)
* [getSparkMajorVersion](#getsparkmajorversion)
* [isDatabricksEnvironment](#isdatabricksenvironment)
* [javaobj2array](#javaobj2array)
* [makeJavaArray](#makejavaarray)
* [pretty](#pretty)
* [sparkApiPackageVersion](#sparkapipackageversion)
* [string2java](#string2java)
* [stripJavaError](#stripjavaerror)
* [table2dataframe](#table2dataframe)
* [table2dataset](#table2dataset)
* [tail](#tail)


------

## API Help


#### matlab.compiler.mlspark.RelationalGroupedDataset

```notalanguage
  RelationalGroupedDataset Special dataset, returned by methods like groupBy.

```

*matlab.compiler.mlspark.RelationalGroupedDataset.agg*

```notalanguage
  AGG Aggregate the the elements using columns
 
  Example:

```

*matlab.compiler.mlspark.RelationalGroupedDataset.count*

```notalanguage
  COUNT Count the elements in the different groups in the dataset

```

*matlab.compiler.mlspark.RelationalGroupedDataset.mean*

```notalanguage
  MEAN Calculates the mean of the columns given as arguments

```

*matlab.compiler.mlspark.RelationalGroupedDataset.sum*

```notalanguage
  SUM Sum the elements in a RelationalGroupDataset

```


#### matlab.compiler.mlspark.Catalog

```notalanguage
  CATALOG Class wrapping the Java Catalog object

```

*matlab.compiler.mlspark.Catalog.dropGlobalTempView*

```notalanguage
  DROPGLOBALTEMPVIEW Drop a global temporary view from a Spark session
 
  Returns true if the view is dropped successfully, false otherwise.
  
  
  Example:
 
      B = catalog.dropGlobalTempView('MyTempTable');

```

*matlab.compiler.mlspark.Catalog.dropTempView*

```notalanguage
  DROPTEMPVIEW Drop a temporary view from a Spark session
 
  Returns true if the view is dropped successfully, false otherwise.
  
  
  Example:
 
      B = catalog.dropTempView('MyTempTable');

```

*matlab.compiler.mlspark.Catalog.listTables*

```notalanguage
  LISTTABLES List database tables in a Spark session
 
  Returns a Dataset with the information.
  
  
  Example:
 
      tDS = catalog.listTables();

```


#### matlab.compiler.mlspark.DataFrameReader

```notalanguage
  DATAFRAMEREADER Interface used to load a Dataset from external storage systems 
  This object can be used to read from external storage systems such as 
  file systems, key-value stores, etc. 
  
  Use SparkSession.read() to access this.

```

*matlab.compiler.mlspark.DataFrameReader.format*

```notalanguage
  FORMAT Method to specify the input data source format
  The format method can be used to configure the DataFrameReader to use an
  appropriate source format. 
  
  Supported data formats include:
    json
    csv
    parquet
    orc
    text
    jdbc
    libsvm
    delta
 
  For example:
  
      myDataSet = spark...
          .read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(inputLocation);

```

*matlab.compiler.mlspark.DataFrameReader.jdbc*

```notalanguage
  JDBC Method to Construct a dataframe representing a database table
  Construct a DataFrame representing the database table accessible via JDBC URL url named table and connection properties.
  
  To read from a MySQL database:
  
      %% Imports
      import java.util.Properties;
                  
      % Create properties for the connection
      connectionProperties = Properties();
  
      % Please consider using secretes to store this info
      connectionProperties.put("user", "ahosagra@mysql-test");
      connectionProperties.put("password", "DummyPassword#");
  
      %% Create a Spark configuration and shared Spark session
      import matlab.compiler.mlspark.*;
  
      % Set the location for temporary files
      sparkProperties = containers.Map({'spark.executorEnv.MCR_CACHE_ROOT'},{'/tmp/matlabapp'});
  
      % Setup configuration to run locally
      conf = SparkConf( ...
          'Master','local',...
          'AppName','DBConnectDemo', ...
          'SparkProperties',sparkProperties, ...
          "SparkVersion", "2" ...
          );
  
      % This will create a singleton SparkSession using the getOrCreate() method
      spark = SparkSession(conf);
 
  Finally, a dataset can be created using:
      dbConnString = 'jdbc:mysql://mysql-test.mwlab.io:3306/test_database?useSSL=true&requireSSL=false';   
      df = spark.read.jdbc(dbConnString,...
          'test_binary',...
          connectionProperties);
  
      % Spark Dataset
      df = matlab.compiler.mlspark.Dataset(dfj);
  
      % Marshal to a table
      mlTable = table(df);

```

*matlab.compiler.mlspark.DataFrameReader.load*

```notalanguage
  LOAD Method to load the input in as a Dataframe / Dataset
  The input datasource in as a dataframe / dataset.
  
  For example:
  
      myDataSet = spark...
          .read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(inputLocation);

```

*matlab.compiler.mlspark.DataFrameReader.option*

```notalanguage
  OPTION Method to specify input options for the underlying data source
  The configuration of the underlying input options control how the data
  source is handled.
  
  For example, to indicate that the input CSV has a header lines and is
  clean enough to infer the schema:
  
      myDataSet = spark...
          .read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(inputLocation);

```


#### matlab.compiler.mlspark.DataFrameWriter

```notalanguage
  DATAFRAMEWRITER Interface to write datasets to external storage systems
   This object can be used to write to external storage systems such as 
  file systems, key-value stores, etc. 
  
  Use SparkSession.write() to access this.

```

*matlab.compiler.mlspark.DataFrameWriter.format*

```notalanguage
  FORMAT Method to specify the output data source format
  The format method can be used to configure the DataFrameWriter to use an
  appropriate source format. 
  
  Built-in options include:
    json
    csv
    parquet
  etc.
 
  For example:
  
      myDataSet.write.format('parquet')...
          .save(outputLocation);

```

*matlab.compiler.mlspark.DataFrameWriter.option*

```notalanguage
  OPTION Method to specify options for writer
 
  Built-in options include:

```

*matlab.compiler.mlspark.DataFrameWriter.parquet*

```notalanguage
  PARQUET Method to Saves the content of the DataFrame in Parquet format at the specified path.

```

*matlab.compiler.mlspark.DataFrameWriter.save*

```notalanguage
  SAVE Method to save the dataset to external storage systems
  Use this method to save the object to storage in the specified format.
  
  For example:
  
    outputLocation = '/delta/sampletable';
    sparkDataSet...
      .write.format("delta")...
      .save(outputLocation);

```

*matlab.compiler.mlspark.DataFrameWriter.saveAsTable*

```notalanguage
  SAVEASTABLE Method to save the dataset as a table
  Use this method to save the object to storage in the specified format.
 
  For example:
 
    outputLocation = '/delta/sampletable';
    DS.write.format("delta")...
                .option("path", outputLocation)...
                .saveAsTable("testTableName");

```


#### matlab.compiler.mlspark.SparkSession

```notalanguage
  SPARKSESSION Entry point to programming Spark with the Dataset and DataFrame API
  The Spark Context is retrieved using the .getOrCreate to return the shared Spark
  Context as required by Spark.
 
  For example to create a session:
    % Create a Spark configuration and shared Spark session
 
      conf = createJavaSparkConf( ...
          'Master', 'local',...
          'AppName', 'mysession', ...
          'SparkProperties', getDefaultSparkProperties ...
          );
 
    % This will create a singleton SparkSession using the getOrCreate() method
    spark = matlab.compiler.mlspark.SparkSession(conf);

```

*matlab.compiler.mlspark.SparkSession.setCheckpointDir*

```notalanguage
matlab.compiler.mlspark.SparkSession/setCheckpointDir is a function.
    setCheckpointDir(obj, dirName)

```

*matlab.compiler.mlspark.SparkSession.setLogLevel*

```notalanguage
matlab.compiler.mlspark.SparkSession/setLogLevel is a function.
    setLogLevel(obj, logLevel)

```

*matlab.compiler.mlspark.SparkSession.getSparkConf*

```notalanguage
matlab.compiler.mlspark.SparkSession/getSparkConf is a function.
    result = getSparkConf(obj)

```

*matlab.compiler.mlspark.SparkSession.delete*

```notalanguage
 DELETE   Delete a handle object.
    DELETE(H) deletes all handle objects in array H. After the delete 
    function call, H is an array of invalid objects.
 
    See also MATLAB.COMPILER.MLSPARK.SPARKSESSION, MATLAB.COMPILER.MLSPARK.SPARKSESSION/ISVALID, CLEAR

Help for matlab.compiler.mlspark.SparkSession/delete is inherited from superclass handle

```

*matlab.compiler.mlspark.SparkSession.addtoBroadcastList*

```notalanguage
matlab.compiler.mlspark.SparkSession/addtoBroadcastList is a function.
    addtoBroadcastList(obj, bobj)

```

*matlab.compiler.mlspark.SparkSession.getJavaStorageLevel*

```notalanguage
matlab.compiler.mlspark.SparkSession/getJavaStorageLevel is a function.
    result = getJavaStorageLevel(obj, storageLvl)

```

*matlab.compiler.mlspark.SparkSession.catalog*

```notalanguage
  CATALOG Return a catalog from a Spark session.
 
  This will return a new dataset, sorted by the column names provided
  Example:
 
      C = spark.catalog();

```

*matlab.compiler.mlspark.SparkSession.range*

```notalanguage
  RANGE Method to create a dataset with a single long column
  Creates a single column dataset, returning the result as a DataFrame. 
  
  The method accepts the start, end (exclusive) and defaults to a step size
  of 1. It is also possible to specify the number of partitions.
  
  Example:
  
    % Create a range of 10 long integers
    myDS = spark.range(0,10);
    
    % Create a range of 20 long integers with a step size of 2
    myDS = spark.range(0, 20, 2);
  
    % Create a range with a specific number of partitions (5 in this case)
    myDS = spark.range(0, 20, 2, 5);

```

*matlab.compiler.mlspark.SparkSession.read*

```notalanguage
  READ Method to get the dataframe reader from the current SparkSession
  Returns a DataFrameReader that can be used to read non-streaming data in as a DataFrame.
  
  Please see SparkSession to create a shared spark context. 
  
        % Create a shared SparkSession  
        spark = SparkSession(conf);
        
        % Get the dataframe reader
        dfreader = spark.read();

```

*matlab.compiler.mlspark.SparkSession.sparkContext*

```notalanguage
  SPARKCONTEXT Method to return the sparkContext from the SparkSession
  The spark context for a given SparkSession object is returned as a handle
  to the user.

```

*matlab.compiler.mlspark.SparkSession.sql*

```notalanguage
  SQL Method to invoke a SQL Query
  Executes a SQL query using Spark, returning the result as a DataFrame. 
  
  For example: 
  
    spark = matlab.compiler.mlspark.SparkSession(sparkConf)
    tblF = spark.sql('SELECT col from test.TestTable limit 10');

```

*matlab.compiler.mlspark.SparkSession.table*

```notalanguage
  TABLE Method to returns the specified table/view as a DataFrame
  Executes a SQL query using Spark, returning the result as a DataFrame. 
  
    spark = matlab.compiler.mlspark.SparkSession(sparkConf)
    tblF = spark.table('test.TestTable');

```

*matlab.compiler.mlspark.SparkSession.write*

```notalanguage
  WRITE Method to get the dataframe writer from the current SparkSession
  Returns a DataFrameWriter that can be used to write data through a DataFrame.
  
  Please see SparkSession to create a shared spark context. 
  
        % Create a shared SparkSession  
        spark = SparkSession(conf);
        
        % Get the dataframe writer
        dfwriter = spark.write();

```


#### matlab.compiler.mlspark.Column

```notalanguage
  Column MATLAB class wrapper for Spark Java Column objects

```

*matlab.compiler.mlspark.Column.string*

```notalanguage
matlab.compiler.mlspark.Column/string is a function.
    str = string(obj)

```

*matlab.compiler.mlspark.Column.char*

```notalanguage
 CHAR Create character array
    CHR = CHAR(X) converts array X of nonnegative integer codes into a
    character array. Valid codes range from 0 to 65535, where codes 0 to
    127 correspond to 7-bit ASCII characters. The characters that MATLAB
    can process (other than 7-bit ASCII characters) depend on your current
    locale setting. Use DOUBLE to convert characters to numeric codes.
 
    CHR = CHAR(C), when C is a cell array of character vectors, places each 
    element of C into a row of the character array CHR. Use CELLSTR to
    convert back.
 
    CHR = CHAR(STR), when STR is a string array, converts each element of STR into 
    a row of the character array CHR. Use STRING to convert back.
 
    CHR = CHAR(T1,T2,T3,..) forms the character array CHR containing the
    text from T1,T2,T3,... as rows. CHAR automatically pads each row with
    spaces in order to form a character array. Each text parameter, Ti,
    can itself be a character array. This allows the creation of
    arbitrarily large character arrays. If Ti has no characters, then the
    corresponding row of CHR is filled with spaces.
 
    See also STRING, DOUBLE, CELLSTR, ISCELLSTR, ISCHAR, ISSTRING.

```

*matlab.compiler.mlspark.Column.ne*

```notalanguage
 ~= (NE)   Not equal relation for handles.
    Handles are equal if they are handles for the same object and are 
    unequal otherwise.
 
    H1 ~= H2 performs element-wise comparisons between handle arrays H1 
    and H2.  H1 and H2 must be of the same dimensions unless one is a 
    scalar.  The result is a logical array of the same dimensions, where 
    each element is an element-wise equality result.
 
    If one of H1 or H2 is scalar, scalar expansion is performed and the 
    result will match the dimensions of the array that is not scalar.
 
    TF = NE(H1, H2) stores the result in a logical array of the same
    dimensions.
 
    See also MATLAB.COMPILER.MLSPARK.COLUMN, MATLAB.COMPILER.MLSPARK.COLUMN/EQ, MATLAB.COMPILER.MLSPARK.COLUMN/GE, MATLAB.COMPILER.MLSPARK.COLUMN/GT, MATLAB.COMPILER.MLSPARK.COLUMN/LE, MATLAB.COMPILER.MLSPARK.COLUMN/LT

Help for matlab.compiler.mlspark.Column/ne is inherited from superclass handle

```

*matlab.compiler.mlspark.Column.eq*

```notalanguage
 == (EQ)   Test handle equality.
    Handles are equal if they are handles for the same object.
 
    H1 == H2 performs element-wise comparisons between handle arrays H1 and
    H2.  H1 and H2 must be of the same dimensions unless one is a scalar.
    The result is a logical array of the same dimensions, where each
    element is an element-wise equality result.
 
    If one of H1 or H2 is scalar, scalar expansion is performed and the 
    result will match the dimensions of the array that is not scalar.
 
    TF = EQ(H1, H2) stores the result in a logical array of the same 
    dimensions.
 
    See also MATLAB.COMPILER.MLSPARK.COLUMN, MATLAB.COMPILER.MLSPARK.COLUMN/GE, MATLAB.COMPILER.MLSPARK.COLUMN/GT, MATLAB.COMPILER.MLSPARK.COLUMN/LE, MATLAB.COMPILER.MLSPARK.COLUMN/LT, MATLAB.COMPILER.MLSPARK.COLUMN/NE

Help for matlab.compiler.mlspark.Column/eq is inherited from superclass handle

```

*matlab.compiler.mlspark.Column.le*

```notalanguage
 <= (LE)   Less than or equal relation for handles.
    Handles are equal if they are handles for the same object.  All 
    comparisons use a number associated with each handle object.  Nothing
    can be assumed about the result of a handle comparison except that the
    repeated comparison of two handles in the same MATLAB session will 
    yield the same result.  The order of handle values is purely arbitrary 
    and has no connection to the state of the handle objects being 
    compared.
 
    H1 <= H2 performs element-wise comparisons between handle arrays H1 and
    H2.  H1 and H2 must be of the same dimensions unless one is a scalar.
    The result is a logical array of the same dimensions, where each
    element is an element-wise >= result.
 
    If one of H1 or H2 is scalar, scalar expansion is performed and the 
    result will match the dimensions of the array that is not scalar.
 
    TF = LE(H1, H2) stores the result in a logical array of the same 
    dimensions.
 
    See also MATLAB.COMPILER.MLSPARK.COLUMN, MATLAB.COMPILER.MLSPARK.COLUMN/EQ, MATLAB.COMPILER.MLSPARK.COLUMN/GE, MATLAB.COMPILER.MLSPARK.COLUMN/GT, MATLAB.COMPILER.MLSPARK.COLUMN/LT, MATLAB.COMPILER.MLSPARK.COLUMN/NE

Help for matlab.compiler.mlspark.Column/le is inherited from superclass handle

```

*matlab.compiler.mlspark.Column.ge*

```notalanguage
 >= (GE)   Greater than or equal relation for handles.
    H1 >= H2 performs element-wise comparisons between handle arrays H1 and
    H2.  H1 and H2 must be of the same dimensions unless one is a scalar.
    The result is a logical array of the same dimensions, where each
    element is an element-wise >= result.
 
    If one of H1 or H2 is scalar, scalar expansion is performed and the 
    result will match the dimensions of the array that is not scalar.
 
    TF = GE(H1, H2) stores the result in a logical array of the same 
    dimensions.
 
    See also MATLAB.COMPILER.MLSPARK.COLUMN, MATLAB.COMPILER.MLSPARK.COLUMN/EQ, MATLAB.COMPILER.MLSPARK.COLUMN/GT, MATLAB.COMPILER.MLSPARK.COLUMN/LE, MATLAB.COMPILER.MLSPARK.COLUMN/LT, MATLAB.COMPILER.MLSPARK.COLUMN/NE

Help for matlab.compiler.mlspark.Column/ge is inherited from superclass handle

```

*matlab.compiler.mlspark.Column.as*

```notalanguage
matlab.compiler.mlspark.Column/as is a function.
    col = as(obj, aliasName)

```

*matlab.compiler.mlspark.Column.not*

```notalanguage
 ~   Logical NOT.
    ~A performs a logical NOT of input array A, and returns an array
    containing elements set to either logical 1 (TRUE) or logical 0 (FALSE).
    An element of the output array is set to 1 if A contains a zero value
    element at that same array location.  Otherwise, that element is set to 0.
 
    B = NOT(A) is called for the syntax '~A' when A is an object.
 
    ~ can also be used to ignore input arguments in a function definition,
    and output arguments in a function call. 
  
    See <a href="matlab:helpview('matlab','MATLAB_OPS')">MATLAB Operators and Special Characters</a> for more details.
 
    See also AND, OR, XOR.

```

*matlab.compiler.mlspark.Column.uminus*

```notalanguage
 -  Unary minus.
    -A negates the elements of A.
 
    B = UMINUS(A) is called for the syntax '-A' when A is an object.
 
    See <a href="matlab:helpview('matlab','MATLAB_OPS')">MATLAB Operators and Special Characters</a> for more details.

```

*matlab.compiler.mlspark.Column.mrdivide*

```notalanguage
 / Right matrix divide.
    A/B is the matrix division of B into A, which is roughly the
    same as A*INV(B) , except it is computed in a different way.
    More precisely, A/B = (B'\A')'. See MLDIVIDE for details.
 
    C = MRDIVIDE(A,B) is called for the syntax 'A / B' when A or B is an object.
 
    See <a href="matlab:helpview('matlab','MATLAB_OPS')">MATLAB Operators and Special Characters</a> for more details.
 
    See also MLDIVIDE, RDIVIDE, LDIVIDE.

```

*matlab.compiler.mlspark.Column.rdivide*

```notalanguage
 ./  Right array divide.
    A./B divides each element of A by the corresponding element of B. A and 
    B must have compatible sizes. In the simplest cases, they can be the 
    same size or one can be a scalar. Two inputs have compatible sizes if, 
    for every dimension, the dimension sizes of the inputs are either the 
    same or one of them is 1. The element-wise operators ./ and .\ are 
    related to each other by the equation A./B = B.\A.
 
    C = RDIVIDE(A,B) is called for the syntax 'A ./ B' when A or B is an object.
 
    See <a href="matlab:helpview('matlab','MATLAB_OPS')">MATLAB Operators and Special Characters</a> for more details.
 
    See also LDIVIDE, MLDIVIDE, MRDIVIDE.

```

*matlab.compiler.mlspark.Column.mtimes*

```notalanguage
 *   Matrix multiply.
    X*Y is the matrix product of X and Y.  Any scalar (a 1-by-1 matrix)
    may multiply anything.  Otherwise, the number of columns of X must
    equal the number of rows of Y.
 
    C = MTIMES(A,B) is called for the syntax 'A * B' when A or B is an
    object.
 
    See <a href="matlab:helpview('matlab','MATLAB_OPS')">MATLAB Operators and Special Characters</a> for more details.
 
    See also TIMES, PAGEMTIMES.

```

*matlab.compiler.mlspark.Column.times*

```notalanguage
 .*  Array multiply.
    X.*Y denotes element-by-element multiplication. X and Y must have
    compatible sizes. In the simplest cases, they can be the same size or
    one can be a scalar. Two inputs have compatible sizes if, for every
    dimension, the dimension sizes of the inputs are either the same or one
    of them is 1.
 
    C = TIMES(A,B) is called for the syntax 'A .* B' when A or B is an object.
 
    See <a href="matlab:helpview('matlab','MATLAB_OPS')">MATLAB Operators and Special Characters</a> for more details.
 
    See also MTIMES.

```

*matlab.compiler.mlspark.Column.and*

```notalanguage
  and Boolean and for a column by another column or a value
 
  and is also overloaded as an operator (see below)
 
  Example:
 
      % C1 is a column
      % C2 is a value or another column
 
      % "And" by another column
      anotherCol = C1.and(aDataset.col('numericCol'))
 
      % Overloaded operator version
      anotherCol = C1 & aDataset.col('numericCol')

```

*matlab.compiler.mlspark.Column.between*

```notalanguage
  BETWEEN Filter entries in a certain range
 
  Example:
 
      % C1 is a column
 
      % Make the sort order descending
      newCol = C1.between('2010-01-14', '2011-05-22');

```

*matlab.compiler.mlspark.Column.cast*

```notalanguage
  COL Cast the type of a column
 
  Example:
 
      % C1 is a column with a number but in string form
 
      % Cast it to an integer
      newCol = C1.cast('int');

```

*matlab.compiler.mlspark.Column.desc*

```notalanguage
  DESC Set the sort order to descending for a column
 
  Example:
 
      % C1 is a column
 
      % Make the sort order descending
      newCol = C1.desc();

```

*matlab.compiler.mlspark.Column.divide*

```notalanguage
  divide a column by another column or a value
 
  rdivide (element-wise) is also overloaded as an operator (see below)
 
  Example:
 
      % DS is a dataset
      % C1 is a column 
      % C2 is a value or another column
 
      % Divide by a constant value and by another column
      C1 = DS.col("columnName");
      C2 = DS.col("anotherColumnName");
      DS2 = DS.withColumn("columnNameToAddOrReplace", C1.divide(10));
      DS3 = DS.withColumn("columnNameToAddOrReplace", C1.divide(C2));
 
      % with operator overloading
      DS2 = DS.withColumn("columnNameToAddOrReplace", C1 / 10);
      DS3 = DS.withColumn("columnNameToAddOrReplace", C1 ./ C2);

```

*matlab.compiler.mlspark.Column.equalTo*

```notalanguage
  equalTo Compare column with another column or value for equality
 
  eq is the overloaded operator for this in MATLAB, and is also implemented
  (see below)
 
  Example:
 
      % C1 is a column
      % C2 is a numeric value, logical value, or another column
 
      % Compare column with a constant value and another column
      newCol = C1.equalTo(0.01);
      anotherCol = C1.equalTo(aDataset.col('numericCol'))
 
      % Overloaded operator version
      newCol = C1 == 0.01;
      anotherCol = C1 == aDataset.col('numericCol')

```

*matlab.compiler.mlspark.Column.explain*

```notalanguage
  EXPLAIN Returns a string explanation of the column, or prints it to console for debugging
 
  explain(obj) displays a string explanation of the column in the console.
 
  explain(obj, extended) enables display of extended debugging information,
  if the optional extended input is set to true (default=false).
 
  explanationStr = explain(_) returns the explanation as a string instead of
  displaying it in the console;
 
  Example:
      % DS is a dataset
      % C1 is a column
 
      % Return an explanation of a column
      C1 = DS.col("columnName");
      explanation = C1.explain(true)    % => "columnName#307375"
 
      % Return an explanation of a modified column
      explanation = explain(C1 + 1.5);  % => "(`columnName` + 1.5D)"

```

*matlab.compiler.mlspark.Column.geq*

```notalanguage
  ge Compare greater than or equal for a column by another column or a value
 
  ge is the overloaded operator for this in MATLAB, and is also implemented
  (see below)
 
  Example:
 
      % C1 is a column
      % C2 is a value or another column
 
      % Check which column items are >= a value or another column
      newCol = C1.geq(0.01);
      anotherCol = C1.geq(aDataset.col('numericCol'))
 
      % Overloaded operator version
      newCol = C1 >= 0.01;
      anotherCol = C1 >= aDataset.col('numericCol')

```

*matlab.compiler.mlspark.Column.gt*

```notalanguage
  gt Compare greater than for a column by another column or a value
 
  gt is also overloaded as an operator (see below)
 
  Example:
 
      % C1 is a column
      % C2 is a value or another column
 
      % Check which column items are > a value or another column
      newCol = C1.gt(0.01);
      anotherCol = C1.gt(aDataset.col('numericCol'))
 
      % Overloaded operator version
      newCol = C1 > 0.01;
      anotherCol = C1 > aDataset.col('numericCol')

```

*matlab.compiler.mlspark.Column.leq*

```notalanguage
  lt Compare less than or equal for a column by another column or a value
 
  le is the overloaded operator for this in MATLAB, and is also implemented
  (see below)
  
  Example:
 
      % C1 is a column
      % C2 is a value or another column
 
      % Check which column items are <= a value or another column
      newCol = C1.leq(0.01);
      anotherCol = C1.leq(aDataset.col('numericCol'))
 
      % Overloaded operator version
      newCol = C1 <= 0.01;
      anotherCol = C1 <= aDataset.col('numericCol')

```

*matlab.compiler.mlspark.Column.lt*

```notalanguage
  lt Compare less than for a column by another column or a value
 
  lt is also the overloaded as an operator (see below)
 
  Example:
 
      % C1 is a column
      % C2 is a value or another column
 
      % Check which column items are < a value or another column
      newCol = C1.lt(0.01);
      anotherCol = C1.lt(aDataset.col('numericCol'))
 
      % Overloaded operator version
      newCol = C1 < 0.01;
      anotherCol = C1 < aDataset.col('numericCol')

```

*matlab.compiler.mlspark.Column.minus*

```notalanguage
  COL subtract a column by another column or a value
 
  minus is also overloaded as an operator (see below)
 
  Example:
      % DS is a dataset
      % C1 is a column 
      % C2 is a value or another column
 
      % Subtract a constant value and another column
      C1 = DS.col("columnName");
      C2 = DS.col("anotherColumnName");
      DS2 = DS.withColumn("columnNameToAddOrReplace", C1.minus(10));
      DS3 = DS.withColumn("columnNameToAddOrReplace", C1.minus(C2));
 
      % with operator overloading
      DS2 = DS.withColumn("columnNameToAddOrReplace", C1 - 10);
      DS3 = DS.withColumn("columnNameToAddOrReplace", C1 - C2);

```

*matlab.compiler.mlspark.Column.multiply*

```notalanguage
  COL multiply a column by another column or a value
 
  times (element-wise) is also overloaded as an operator (see below)
  
  Example:
 
      % C1 is a column
      % C2 is a value or another column
 
      % multiply by a constant value and by another column
      newCol = C1.mutiply(0.01);
      anotherCol = C1.multiply(aDataset.col('numericCol'));
 
      % with operator overloading
      newCol = C1 .* 0.01;
      anotherCol = C1 .* aDataset.col('numericCol');

```

*matlab.compiler.mlspark.Column.notEqual*

```notalanguage
  notEqual Compare column with another column or value for inequality
 
  ne is the overloaded operator for this in MATLAB, and is also implemented
  (see below)
  
  Example:
 
      % C1 is a column
      % C2 is a numeric value, logical value, or another column
 
      % Compare column with a value or another column for inequality
      newCol = C1.notEqual(0.01);
      anotherCol = C1.notEqual(aDataset.col('numericCol'))
 
      % Overloaded operator version
      newCol = C1 ~= 0.01;
      anotherCol = C1 ~= aDataset.col('numericCol')

```

*matlab.compiler.mlspark.Column.or*

```notalanguage
  or Boolean or for a column by another column or a value
 
  or is also overloaded as an operator (see below)
 
  Example:
 
      % C1 is a column
      % C2 is a value or another column
 
      % "Or" by another column
      anotherCol = C1.or(aDataset.col('numericCol'))
 
      % Overloaded operator version
      anotherCol = C1 | aDataset.col('numericCol')

```

*matlab.compiler.mlspark.Column.plus*

```notalanguage
  COL add a column to another column or a value
 
  plus is also overloaded as an operator (see below)
 
  Example:
      % DS is a dataset
      % C1 is a column 
      % C2 is a value or another column
 
      % 
      C1 = DS.col("columnName");
      C2 = DS.col("anotherColumnName");
      DS2 = DS.withColumn("columnNameToAddOrReplace", C1.plus(10));
      DS3 = DS.withColumn("columnNameToAddOrReplace", C1.plus(C2));
 
      % with operator overloading
      DS2 = DS.withColumn("columnNameToAddOrReplace", C1 + 10);
      DS3 = DS.withColumn("columnNameToAddOrReplace", C1 + C2);

```

*matlab.compiler.mlspark.Column.sparkOtherwise*

```notalanguage
  SPARKOTHERWISE the default condition in a collection of calls to when()
 
  The name of this method differs from normal Spark, as otherwise is a
  reserved word in MATLAB.
 
  This function will return a new column.
 
  Example:
 
      petCol = testCase.dsNames.col("Pet");
         dsN = testCase.dsNames.withColumn(...
             "testCol", ...
              functions.when(petCol, "Cat", "C")...
              .when(petCol, "Giraffe", "G")...
              .when(petCol, "Iguana", "I")...
             .sparkOtherwise("F"));

```

*matlab.compiler.mlspark.Column.when*

```notalanguage
  WHEN Creates a condition for multiple value expressions
 
  origCol     - column used for the original call to when (functions.when)
  testValue   - condition to test against (equals to)
  resultValue - value the returned column will have if the condition is met
 
  This function will return a new column
 
  Example:
 
      petCol = testCase.dsNames.col("Pet");
      dsN = testCase.dsNames.withColumn(...
          "testCol", ...
          functions.when(petCol, "Cat", "C")...
          .when(petCol, "Giraffe", "G")...
          .when(petCol, "Iguana", "I")...
          .sparkOtherwise("F"));
 
  Copyright 2021 MathWorks, Inc.

```


#### matlab.compiler.mlspark.Dataset

```notalanguage
  DATASET Strongly typed collection of object that expose lazy operations
  A Dataset is a strongly typed collection of domain-specific objects that
  can be transformed in parallel using functional or relational operations.
 
  Each Dataset also has an untyped view called a DataFrame, which is a
  Dataset of Row. Operations available on Datasets are divided into
  transformations and actions. Transformations are the ones that produce
  new Datasets, and actions are the ones that trigger computation and
  return results.
 
  Example transformations include map, filter, select, and aggregate
  (groupBy).
 
  Example actions count, show, or writing data out to file systems.
 
  Datasets are "lazy", i.e. computations are only triggered when an action
  is invoked. Internally, a Dataset represents a logical plan that
  describes the computation required to produce the data. When an action
  is invoked, Spark's query optimizer optimizes the logical plan and
  generates a physical plan for efficient execution in a parallel and
  distributed manner. To explore the logical plan as well as optimized
  physical plan, use the explain function.
 
  There are typically two ways to create a Dataset.
  The most common way is by pointing Spark to some files on storage systems,
  using the read function available on a SparkSession.
 
  For example:
 
      sparkDataSet = spark.read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load('/data/sample.csv');
 
  Datasets can also be created through transformations available on
  existing Datasets.
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html

```

*matlab.compiler.mlspark.Dataset.string*

```notalanguage
matlab.compiler.mlspark.Dataset/string is a function.
    str = string(obj)

```

*matlab.compiler.mlspark.Dataset.char*

```notalanguage
 CHAR Create character array
    CHR = CHAR(X) converts array X of nonnegative integer codes into a
    character array. Valid codes range from 0 to 65535, where codes 0 to
    127 correspond to 7-bit ASCII characters. The characters that MATLAB
    can process (other than 7-bit ASCII characters) depend on your current
    locale setting. Use DOUBLE to convert characters to numeric codes.
 
    CHR = CHAR(C), when C is a cell array of character vectors, places each 
    element of C into a row of the character array CHR. Use CELLSTR to
    convert back.
 
    CHR = CHAR(STR), when STR is a string array, converts each element of STR into 
    a row of the character array CHR. Use STRING to convert back.
 
    CHR = CHAR(T1,T2,T3,..) forms the character array CHR containing the
    text from T1,T2,T3,... as rows. CHAR automatically pads each row with
    spaces in order to form a character array. Each text parameter, Ti,
    can itself be a character array. This allows the creation of
    arbitrarily large character arrays. If Ti has no characters, then the
    corresponding row of CHR is filled with spaces.
 
    See also STRING, DOUBLE, CELLSTR, ISCELLSTR, ISCHAR, ISSTRING.

```

*matlab.compiler.mlspark.Dataset.agg*

```notalanguage
  AGG Aggregates on the entire Dataset without groups.
 
  Inputs:
    - Column objects
    - containers.Map Object with a mapping of columns => functions
    - Nx2 table (2 columns, representing columnName, functionName)
    - Nx2 cell-array (same 2 columns)
    - Nx2 string-array (same 2 columns)
 
  Examples:
 
      dataset = spark.read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load('/data/sample1.csv')...
 
      map = ["col1", "Count"; ...
             "col2", "Max"; ...
             "col3", "Min"; ...
             "col4", "Avg"];
      newDataset = dataset.agg(map);
      newDataset.show()
         +-----------+---------+---------+---------+
         |count(col1)|max(col2)|min(col3)|avg(col4)|
         +-----------+---------+---------+---------+
         |      52312|   123523|  15.7697|     12.5|
         +-----------+---------+---------+---------+
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#agg-java.util.Map-

```

*matlab.compiler.mlspark.Dataset.alias*

```notalanguage
  ALIAS Return a new Dataset with an alias set
  (same as the AS method)
  
  Example:
  
      % Create a dataset 
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
  
      % Returns a new Dataset with an alias set.
      newDataSet = myDataSet.alias("new name");
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#alias-java.lang.String-

```

*matlab.compiler.mlspark.Dataset.apply*

```notalanguage
  APPLY method returns the selected Dataset column name as a Column object.
  
  Note: The column name can also reference a nested column such as a.b.
 
  Example:
  
      % Create a dataset 
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
  
      % Retrieve a named column
      column = myDataSet.apply("Day");
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#apply-java.lang.String-

```

*matlab.compiler.mlspark.Dataset.as*

```notalanguage
  AS Return a new Dataset with an alias set
  (same as the ALIAS method)
  
  Example:
  
      % Create a dataset 
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
  
      % Returns a new Dataset with an alias set.
      newDataSet = myDataSet.as("new name");
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#as-java.lang.String-

```

*matlab.compiler.mlspark.Dataset.cache*

```notalanguage
  CACHE Persist this Dataset with the default storage level
  This dataset is persisted with the default storage level
  (MEMORY_AND_DISK).

```

*matlab.compiler.mlspark.Dataset.col*

```notalanguage
  COL Retrieve a column object from the dataset
 
  Selects column based on the column name and returns it as a Column.
  
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      DS = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Return a Column object that represents the 'Distance' column
      myCol = DS.col('Distance');
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#col-java.lang.String-

```

*matlab.compiler.mlspark.Dataset.columns*

```notalanguage
  COLUMNS Method to return column names from a dataset.
 
   This will return a string array of the column names.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Return column names
      cols = myDataSet.columns();

```

*matlab.compiler.mlspark.Dataset.count*

```notalanguage
  COUNT Return the number of rows in the Dataset.
 
  Example:
 
   sparkDataSet = spark.read.format('csv')...
                    .option('header','true')...
                    .option('inferSchema','true')...
                    .load(inputLocation);
 
   numRows = sparkDataSet.count();

```

*matlab.compiler.mlspark.Dataset.createGlobalTempView*

```notalanguage
  CREATEGLOBALTEMPVIEW Create temporary global database view of dataset
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      myDataSet.createGlobalTempView('my_table_name');

```

*matlab.compiler.mlspark.Dataset.createOrReplaceGlobalTempView*

```notalanguage
  CREATEORREPLACEGLOBALTEMPVIEW Create global temporary database view of dataset
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      myDataSet.createOrReplaceGlobalTempView('my_table_name');

```

*matlab.compiler.mlspark.Dataset.createOrReplaceTempView*

```notalanguage
  CREATEORREPLACETEMPVIEW Create temporary database view of dataset
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      myDataSet.createOrReplaceTempView('my_table_name');

```

*matlab.compiler.mlspark.Dataset.createTempView*

```notalanguage
  CREATETEMPVIEW Create temporary database view of dataset
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Filter the dataset given conditions
      myDataSet.createTempView('my_table_name');

```

*matlab.compiler.mlspark.Dataset.distinct*

```notalanguage
  DISTINCT Return distinct rows from the input Dataset.
 
  Returns a new Dataset with unique rows
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
       % Show the unique set of machines from this Dataset
       myDataSet.select("MachineType").distinct().show();

```

*matlab.compiler.mlspark.Dataset.drop*

```notalanguage
  DROP Method to return a new Dataset with one or more columns dropped
  Returns a new dataset with the column(s) dropped
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new dataset without the specified columns
      newDataSet = myDataSet.drop("UniqueCarrier", "Day", "Month");
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#drop-java.lang.String-

```

*matlab.compiler.mlspark.Dataset.dropDuplicates*

```notalanguage
  DROPDUPLICATES Method to drop duplicate rows specified by certain columns.
 
  Returns a new Dataset with duplicates removed
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Returns a new Dataset that contains only the unique rows from this Dataset.
      newDataSet = myDataSet.dropDuplicates();
 
      % Returns a new Dataset with duplicate rows removed, considering only the subset of columns.
      newDataSet = myDataSet.dropDuplicates("UniqueCarrier", "Day", "Month");
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#dropDuplicates-java.lang.String:A-

```

*matlab.compiler.mlspark.Dataset.except*

```notalanguage
  EXCEPT Returns a new Dataset having rows in this Dataset but not in another.
 
  EXCEPT(obj,otherDataset) will return a new dataset that contains only the
  rows in this Dataset that do not exist in the otherDataset.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new Dataset that only has rows unique to this Dataset
      newDataSet = myDataSet.except(otherDataset);
 
      % This will naturally return an empty Dataset (having no rows):
      newDataSet = myDataSet.except(myDataset);
      disp(newDataSet.count())  % displays 0
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#except-org.apache.spark.sql.Dataset-

```

*matlab.compiler.mlspark.Dataset.exceptAll*

```notalanguage
  EXCEPTALL Returns a new Dataset having rows in this Dataset but not in another, preserving duplicates
 
  EXCEPTALL(obj,otherDataset) will return a new dataset that contains only
  the rows in this Dataset that do not exist in the otherDataset, while
  preserving the duplicates (unlike the except() method).
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new Dataset that only has rows unique to this Dataset
      newDataSet = myDataSet.exceptAll(otherDataset);
 
      % This will naturally return an empty Dataset (having no rows):
      newDataSet = myDataSet.exceptAll(myDataset);
      disp(newDataSet.count())  % displays 0
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#exceptAll-org.apache.spark.sql.Dataset-

```

*matlab.compiler.mlspark.Dataset.explain*

```notalanguage
  EXPLAIN Method to display the schema plans.
 
  This method will display the scema plans (logical and physical) using a
  format specified by a given explain mode.
 
  explain(obj) displays the physical plan of the schema
 
  explain(obj, false) displays the schema physical plan, same as explain(obj)
 
  explain(obj, true) displays both the schema physical plan, as well as the
  logical plans (parsed, analyzed, optimized).
 
  explain(obj, mode) specifies the expected display format of plans, based
  on the value of mode (a string or char array):
    "simple"    - display only a physical plan
    "extended"  - display both logical and physical plans
    "codegen"   - display a physical plan and generated codes (if available)
    "cost"      - display a logical plan and statistics (if available)
    "formatted" - display two sections: physical plan outline and node details
 
  output = explain(_) returns the explain output as a string rather than
  displaying it in the console.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Display the dataset's physical and logical explain plans
      myDataSet.explain("extended");  %or: myDataSet.explain(true)
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#explain-java.lang.String-

```

*matlab.compiler.mlspark.Dataset.filter*

```notalanguage
  FILTER Filter rows using the given SQL expression
 
  Filters rows using the specified SQL expression or Column object.
  
  Example:
  
      % Create a dataset 
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
  
      % Filter the dataset based on a specified SQL expression
      filterDataSet = myDataSet.filter("UniqueCarrier LIKE 'AA'");
 
  Reference
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#filter-org.apache.spark.sql.Column-

```

*matlab.compiler.mlspark.Dataset.groupBy*

```notalanguage
  GROUPBY Group dataset by certain columns
 
  This will return a new RelationalGroupDataset
 
  Example: Group Origins and weekdays, to see which airport has the
  most (and fewest) departures.
 
      % Create a dataset of flight data
      flights = spark.read.format("csv") ...
          .option("header", "true") ...
          .option("inferSchema", "true") ...
          .load(['file://', which('airlinesmall.csv')]);
 
      DS = flights.groupBy("Origin", "DayOfWeek").count();
 
      % Show ascending sort
      DS.sort("count").show(10);
 
      % Show descending sort
      DS.sort(DS.col("count").desc()).show(10);

```

*matlab.compiler.mlspark.Dataset.head*

```notalanguage
  HEAD Fetch the head of the given dataset
  Returns a single GenericRowWithSchema
  
  Example:
      
      % Create a dataset 
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
    
       % Read a single row
       singleRow = myDataSet.head();  
  
  To read multiple rows, specify the number of rows to read.

```

*matlab.compiler.mlspark.Dataset.intersect*

```notalanguage
  INTERSECT Returns a new Dataset having rows common to this Dataset and another.
 
  INTERSECT(obj,otherDataset) will return a new dataset that contains the
  rows that exist in both this Dataset and the otherDataset.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new Dataset that only has rows common to both Datasets
      newDataSet = myDataSet.intersect(otherDataset);
 
      % This will naturally return a copy of the current Dataset:
      newDataSet = myDataSet.intersect(myDataset);
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#intersect-org.apache.spark.sql.Dataset-

```

*matlab.compiler.mlspark.Dataset.intersectAll*

```notalanguage
  INTERSECTALL Returns a new Dataset having rows common to this Dataset and another, preserving duplicates
 
  INTERSECTALL(obj,otherDataset) will return a new dataset that contains
  the rows that exist in both this Dataset and the otherDataset, while
  preserving the duplicates (unlike the intersect() method).
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new Dataset that only has rows common to both Datasets
      newDataSet = myDataSet.intersectAll(otherDataset);
 
      % This will naturally return a copy of the current Dataset:
      newDataSet = myDataSet.intersectAll(myDataset);
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#intersectAll-org.apache.spark.sql.Dataset-

```

*matlab.compiler.mlspark.Dataset.isEmpty*

```notalanguage
  ISEMPTY Method that returns true if the Dataset is empty.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Is the Dataset empty?
      result = myDataSet.isEmpty();  %or: isEmpty(myDataSet)
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#isEmpty--

```

*matlab.compiler.mlspark.Dataset.isLocal*

```notalanguage
  ISLOCAL Method that returns true if methods can run locally.
  
  ISLOCAL returns a logical (true/false) value that indicates whether the
  collect and take methods can be run locally (without any Spark executors).
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Is the Dataset local?
      result = myDataSet.isLocal();  %or: isLocal(myDataSet)
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#isLocal--

```

*matlab.compiler.mlspark.Dataset.isStreaming*

```notalanguage
  ISSTREAMING Method that returns true if Dataset source streams continuous data.
  
  ISSTREAMING returns a logical (true/false) value that indicates whether
  this Dataset contains one or more sources that continuously streams data
  as it arrives. A Dataset that reads data from a streaming source must be
  executed as a StreamingQuery using the start() method in DataStreamWriter.
  Methods that return a single answer, e.g. count() or collect(), will throw
  an AnalysisException when there is a streaming source present.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Is the Dataset streaming continuous data?
      result = myDataSet.isStreaming();  %or: isStreaming(myDataSet)
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#isStreaming--

```

*matlab.compiler.mlspark.Dataset.join*

```notalanguage
  JOIN Performs a join method on two datasets and returns the new Dataset.
 
  JOIN(dsToJoin) performs a join between this Dataset and dsToJoin (which
  must also be a Dataset object), and returns a new Dataset of the result.
  An inner-join is used for the join, but since no join condition is
  specified, the result is the same as a full cross-join, containing a full
  cartesian product of the rows in both datasets (i.e. N1 x N2). Subsequent
  filtering (using the filter() or where() methods) should be performed to
  reduce the resulting dataset size.
 
  JOIN(dsToJoin,joinCriteria) performs an inner-join between this Dataset
  and dsToJoin using the specified join criteria. joinCriteria may be either
  a column name (string) that exists in both datasets, or a string that
  evaluates as a SQL expression that results in a boolean (logical true/
  false) data type, or a Column object of boolean data type.
 
  JOIN(dsToJoin,joinCriteria,joinType) performs the join operation specified
  by joinType between this Dataset and dsToJoin, using the specified
  join criteria. The joinCriteria in this variant must be a Column object
  of boolean (logical true/false) data type; it cannot be a string.
  joinType must be a string with one of the following values (only):
  inner (default), cross, outer, full, fullouter, full_outer, left,
  leftouter, left_outer, right, rightouter, right_outer, semi, leftsemi,
  left_semi, anti, leftanti, left_anti.
 
  Note: If you perform a join without aliasing the input datasets (using
  the alias() or as() methods), you will only be able to reference columns
  that exist in only one of the datasets but not both, since there is no way
  to disambiguate which side of the join the columns reference. To reference
  common columns that exist in both datasets, you must alias the datasets.
 
  Examples:
 
      dataset1 = spark.read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load('/data/sample1.csv')...
          .as('t1');  % note the aliasing as: "t1"
 
      dataset2 = spark.read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load('/data/sample2.csv')...
          .as('t2');  % note the aliasing as: "t2"
 
      dataset1.join(dataset2, "sameColumn");  % column name variant
 
      dataset1.join(dataset2), 't1.col1===t2.col2')       % SQL expr variant
      dataset1.join(dataset2).where('t1.col1===t2.col2')  % equivalent
 
      dataset1.join(dataset2, dataset2.col("col2")>=25)   % Column variant
 
      dataset1.join(dataset2, dataset2.col("col2")>=25, 'semi')  % joinType
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#join-org.apache.spark.sql.Dataset-

```

*matlab.compiler.mlspark.Dataset.joinWith*

```notalanguage
  JOINWITH Performs a join method on two datasets and returns a new Dataset with internal nesting
 
  JOINWITH is functionally similar to the join() method, except that the
  resulting Dataset is represented not as a unified table but rather as a
  two-column Dataset, where each column contains a tuple of the left and
  right Dataset rows respectively. Also, not all input variants that join()
  accepts are also accepted by JOINWITH.
 
  JOINWITH(dsToJoin,joinCriteria) performs an inner-join between this
  Dataset and dsToJoin using the specified join criteria. joinCriteria must
  be a Column object of boolean (logical true/false) data type. Unlike the
  join() method, joinCriteria may not be a string.
 
  JOINWITH(dsToJoin,joinCriteria,joinType) performs the join operation
  specified by joinType between this Dataset and dsToJoin, using the
  specified join criteria. joinType must be a string with one of the
  following values (only): inner (default), cross, outer, full, fullouter, 
  full_outer, left, leftouter, left_outer, right, rightouter, right_outer.
  Unlike the join() method, joinType cannot be semi, leftsemi, left_semi, 
  anti, leftanti, or left_anti.
 
  Note: If you perform a join without aliasing the input datasets (using
  the alias() or as() methods), you will only be able to reference columns
  that exist in only one of the datasets but not both, since there is no way
  to disambiguate which side of the join the columns reference. To reference
  common columns that exist in both datasets, you must alias the datasets.
 
  Examples:
 
      dataset1 = spark.read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load('/data/sample1.csv')...
          .as('t1');  % note the aliasing as: "t1"
 
      dataset2 = spark.read.format('csv')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load('/data/sample2.csv')...
          .as('t2');  % note the aliasing as: "t2"
 
      dataset1.joinWith(dataset2, dataset2.col("col2")>=25)
 
      dataset1.joinWith(dataset2, dataset2.col("col2")>=25, 'semi') %joinType
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#joinWith-org.apache.spark.sql.Dataset-org.apache.spark.sql.Column-

```

*matlab.compiler.mlspark.Dataset.limit*

```notalanguage
  LIMIT Limit the number of rows in the dataset
  Returns a new Dataset by taking the first n rows.

```

*matlab.compiler.mlspark.Dataset.orderBy*

```notalanguage
  ORDERBY Method to select rows by name
  (same as the SORT method)
 
  This method will return a new dataset, sorted by the column names provided
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Sort the dataset using the specified columns
      sortedDataSet = myDataSet.orderBy("UniqueCarrier", "Day", "Month");    
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#orderBy-java.lang.String-java.lang.String...-

```

*matlab.compiler.mlspark.Dataset.printSchema*

```notalanguage
  printSchema Display the Dataset's underlying schema in the console
 
  Example:
 
      DS.printSchema()

```

*matlab.compiler.mlspark.Dataset.randomSplit*

```notalanguage
  randomSplit Make a random split of a dataset
 
  For example, split a dataset into four smaller ones.
 
   sparkDataSet = spark.read.format('csv')...
                    .option('header','true')...
                    .option('inferSchema','true')...
                    .load(inputLocation);
 
   datasetArray = sparkDataSet.randomSplit([.25,.25,.25,.25]);

```

*matlab.compiler.mlspark.Dataset.repartition*

```notalanguage
  REPARTITION Method to return a new Dataset partitioned as requested.
 
  REPARTITION(obj) returns a new Dataset that has the default number (200)
  of partitions.
 
  REPARTITION(obj, numPartitions) returns a new Dataset that has exactly
  numPartitions partitions.
 
  REPARTITION(obj, columns) returns a new Dataset that is
  partitioned by columns. The resulting Dataset is hash
  partitioned. This is the same operation as "DISTRIBUTE BY" in SQL (Hive QL).
 
  REPARTITION(obj, numPartitions, columns) returns a new Dataset that is
  partitioned by columns into numPartitions. The resulting Dataset is hash
  partitioned. This is the same operation as "DISTRIBUTE BY" in SQL (Hive QL).
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new dataset repartitioned into 10 partitions
      newDataSet = myDataSet.repartition(10);
 
      % Check the resulting partitions
      rdd = newDataSet.rdd();  % or: rdd(newDataset)
      numPartitions = rdd.getNumPartitions();  % should be =10
      partitions = rdd.getPartitions(); %array of org.apache.spark.Partition
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#repartition-int-

```

*matlab.compiler.mlspark.Dataset.repartitionByRange*

```notalanguage
  REPARTITIONBYRANGE Method to return a new Dataset partitioned as requested.
 
  REPARTITIONBYRANGE(obj, numPartitions, columns) returns a new Dataset that
  is range-partitioned by columns into up to numPartitions. At least one
  column must be specified. The rows are not sorted in each partition of the
  resulting Dataset. For performance reasons this method uses sampling to
  estimate the ranges. The output may not be consistent, since sampling can
  return different values. The sample size can be controlled by the config
  spark.sql.execution.rangeExchange.sampleSizePerPartition.
 
  REPARTITIONBYRANGE(obj, columns) returns a new Dataset that is partitioned
  by columns, using spark.sql.shuffle.partitions as number of partitions.
 
  Note: unlike the repartition() method, REPARTITIONBYRANGE does not accept
  a no-columns input - At least one column must be specified, otherwise the
  range partitioning cannot be computed (the repartition() method uses hash
  partitioning, so specifying the columns is optional).
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new dataset having up to 10 partitions based on Year value
      newDataSet = myDataSet.repartitionByRange(10, 'Year');
 
      % Check the resulting partitions
      rdd = newDataSet.rdd();  % or: rdd(newDataset)
      numPartitions = rdd.getNumPartitions();  % should be <=10
      partitions = rdd.getPartitions(); %array of org.apache.spark.Partition
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#repartitionByRange-int-org.apache.spark.sql.Column...-

```

*matlab.compiler.mlspark.Dataset.sample*

```notalanguage
  Sample Returns a new Dataset by sampling a fraction of the number of rows in the dataset.  
  Fraction must be a number in the range between 0.0 and 1.0.

```

*matlab.compiler.mlspark.Dataset.schema*

```notalanguage
  SCHEMA Retrieve Java schema object from dataset

```

*matlab.compiler.mlspark.Dataset.select*

```notalanguage
  SELECT Method to select columns by name
 
  SELECT(obj,columns) will return a new dataset that contains only the
  specified COLUMNS from the original dataset. COLUMNS can be an array of
  MATLAB Column objects, an array of strings (column names), or cell-array
  of chars (column names). Note that only the first variant (array of Column
  objects) enables using ad-hoc constructed columns; when using the column
  names variants, only existing columns can be specified, not ad-hoc ones.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Select a subset of the Dataset with just a few columns
      newDataSet = myDataSet.select("UniqueCarrier", "Day", "Month");
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#select-org.apache.spark.sql.Column...-

```

*matlab.compiler.mlspark.Dataset.selectExpr*

```notalanguage
  SELECTEXPR Method to select Dataset columns via SQL expressions
 
  SELECT(obj,sqlExpr1,...) will return a new dataset that contains only the
  specified columns from the original dataset modified by the specified SQL
  expressions. 
 
  Note: the SQL expressions must be individual strings or chars, or a single
  array of strings/chars; they cannot be Column objects.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Filter the dataset, returning a new Dataset with just a few columns
      newDataSet = myDataSet.selectExpr("UniqueCarrier as Carrier", ...
                                        "Day", "Value/12 as Dozens", ...
                                        "-5*abs(Year-2000) as Something");
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#selectExpr-java.lang.String...-

```

*matlab.compiler.mlspark.Dataset.show*

```notalanguage
  SHOW Method to display the top part of a dataset in the console
 
  SHOW(obj) displays the top 20 Dataset rows in a tabular form. Strings
  more than 20 characters are truncated, and all cells are right-aligned.
 
  SHOW(obj,truncate) is the same as SHOW(obj), with a logical (true/false)
  flag to indicate whether or not to truncate strings longer than 20 chars
  (default=true).
 
  SHOW(obj,numRows,truncate) is the same as SHOW(obj,truncate) with an
  additional numeric input (numRows) specifying how many rows to display
  (default=20). In this variant, the truncate value can be set to any
  integer >=0 to specify the number of characters beyond which string
  truncation will occur.
 
  SHOW(obj,numRows,truncate,vertical) is the same as 
  SHOW(obj,numRows,truncate) with an additional input (vertical) of logical
  data type (true/false) indicating whether to display the data in regular
  tabular format (default=false) or in a verbose vertical format (true).
  
  Example:
 
      % Create a dataset
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load('/test/*.parquet');
 
      % Display the top part of the dataset
      myDataSet.show();        %top 20 rows
      myDataSet.show(false);   %top 20 rows, no string truncation
      myDataSet.show(8,false); %top 8 rows, no string truncation
      myDataSet.show(8,15);    %top 8 rows, truncate strings after 15 chars
      myDataSet.show(8,5,true);%top 8 rows, truncate after 5 chars, vertical
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#show--

```

*matlab.compiler.mlspark.Dataset.sort*

```notalanguage
  SORT Method to select rows by name
 
  SORT(obj,columns) will return a new Dataset, sorted by the specified
  COLUMNS in the original dataset. COLUMNS can be an array of MATLAB Column
  objects, an array of strings (column names), or a cell-array of chars
  (column names). Note that only the first variant (array of Column objects)
  enables use of ad-hoc constructed columns; when using the other variants
  (column names), only existing columns can be specified, not ad-hoc ones.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Sort the dataset using the specified columns
      newDataSet = myDataSet.sort("UniqueCarrier", "Day", "Month");
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#sort-org.apache.spark.sql.Column...-

```

*matlab.compiler.mlspark.Dataset.table*

```notalanguage
  TABLE Convert a Spark dataset or dataframe to a MATLAB table
 
  Converts from a Spark dataset to a MATLAB table
 
  This function should be used for tests, not for large tables.
 
  For example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Convert the dataset to a MATLAB table
      filterDataSet = myDataSet.filter("UniqueCarrier LIKE 'AA'");
      matlabTable = table(filterDataSet);
 
  See also: struct

```

*matlab.compiler.mlspark.Dataset.toDF*

```notalanguage
  TODF Method to convert a Dataset into a generic DataFrame with renamed cols.
 
  TODF(obj) returns a new Dataset that is a generic DataFrame representation
  of the original Dataset object.
 
  TODF(obj, colNames) returns a new Dataset (DataFrame) with the original
  columns renamed as colNames (strings array or cell-array of chars).
  The length of colNames must match the number of Dataset columns.
 
  TODF(obj, colName1, colName2, ...) returns a new Dataset (DataFrame) with
  the original columns renamed (strings or char arrays).
  The number of column names must match the number of Dataset columns.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new dataset with the specified columns
      newDataSet = myDataSet.toDF("Carrier", "TheDay", "TheMonth");
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#toDF-java.lang.String...-

```

*matlab.compiler.mlspark.Dataset.union*

```notalanguage
  UNION Returns a new Dataset having rows in either this Dataset or another.
 
  UNION(obj,otherDataset) will return a new dataset that contains the
  rows that exist in either this Dataset or the otherDataset.
 
  Note: this method preserves duplicate rows, i.e. rows that exist in both
  Datasets will be duplicated in the new Dataset. This is equivalent to
  "UNION ALL" in SQL. To do a SQL-style set union (that does deduplication
  of elements), use this function followed by a call to distinct().
 
  Also as standard in SQL, UNION resolves columns by position (not by name).
  Notice that the column positions in the schema aren't necessarily matched
  with the fields in the strongly typed objects in a Dataset. UNION resolves
  columns by their positions in the schema, not the field names. Use the
  unionByName() method to resolve the columns by the Dataset field name.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new Dataset that merges both Datasets
      newDataSet = myDataSet.union(otherDataset);
 
      % This will return a copy of the current Dataset with rows duplicated:
      newDataSet = myDataSet.union(myDataset);
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#union-org.apache.spark.sql.Dataset-

```

*matlab.compiler.mlspark.Dataset.unionAll*

```notalanguage
  UNIONALL Returns a new Dataset having rows in either this Dataset or another, preserving duplicates
  (alias for the union() method)
 
  UNIONALL(obj,otherDataset) will return a new dataset that contains the
  rows that exist in either this Dataset or the otherDataset.
 
  Note: this method preserves duplicate rows, i.e. rows that exist in both
  Datasets will be duplicated in the new Dataset. This is equivalent to
  "UNION ALL" in SQL. To do a SQL-style set union (which de-duplicates the
  elements), call the distinct() method on the results of this function.
 
  Also as standard in SQL, UNION resolves columns by position (not by name).
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new Dataset that only has rows common to both Datasets
      newDataSet = myDataSet.unionAll(otherDataset);
 
      % This will return a copy of the current Dataset with rows duplicated:
      newDataSet = myDataSet.unionAll(myDataset);
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#unionAll-org.apache.spark.sql.Dataset-

```

*matlab.compiler.mlspark.Dataset.unionByName*

```notalanguage
  UNIONBYNAME Returns a new Dataset having rows in either this Dataset or another.
 
  UNIONBYNAME(obj,otherDataset) will return a new dataset that contains the
  rows that exist in either this Dataset or the otherDataset.
 
  Note: this method preserves duplicate rows, i.e. rows that exist in both
  Datasets will be duplicated in the new Dataset. This is equivalent to
  "UNION ALL" in SQL. To do a SQL-style set union (that does deduplication
  of elements), use this function followed by a call to distinct().
 
  Unlike standard SQL and the union() method, UNIONBYNAME resolves columns
  by their field name, not by their schema position.
 
  UNIONBYNAME(obj,otherDataset, allowMissingColumns) accepts an optional
  logical (true/false) value indicating whether the set of column names in
  this Dataset and otherDataset can differ; missing columns will be filled
  with null values. Any missing columns of this Dataset will be added at
  the end of the columns in the union result's Dataset schema.
  The default value of allowMissingColumns is false, i.e. both Datasets must
  have exactly the same set of names (although not necessarily in the same
  schema order, or in the same case-sensitivity).
  Note: This method variant is only supported by Spark version 3.1 or newer.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new Dataset that merges both Datasets
      newDataSet = myDataSet.unionByName(otherDataset);
 
      % This will return a copy of the current Dataset with rows duplicated:
      newDataSet = myDataSet.unionByName(myDataset);
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#unionByName-org.apache.spark.sql.Dataset-

```

*matlab.compiler.mlspark.Dataset.unpersist*

```notalanguage
  UNPERSIST Method to mark the Dataset as non-persistent.
 
  This method will mark the Dataset as non-persistent, and remove all blocks
  for it from memory and disk. This will not un-persist any cached data that
  is built upon this Dataset.
 
  Inputs:
      blocking - optional logical (true/false) flag indicating whether to
                 block until all blocks are deleted.
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Un-persist the dataset
      sortedDataSet = myDataSet.unpersist();  %or: myDataSet.unpersist(true)
 
  Reference: 
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#unpersist-boolean-

```

*matlab.compiler.mlspark.Dataset.where*

```notalanguage
  WHERE Method to filter rows using the given SQL expression
  (same as the FILTER method)
 
  Filters rows using the specified SQL expression or Column object.
  
  Example:
  
      % Create a dataset 
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
  
      % Filter the dataset based on a specified SQL expression
      filterDataSet = myDataSet.where("UniqueCarrier LIKE 'AA'");
 
  Reference
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#where-org.apache.spark.sql.Column-

```

*matlab.compiler.mlspark.Dataset.withColumn*

```notalanguage
  WITHCOLUMN Create a new column in the dataset
 
  This function will return a new dataset, with the additional column
 
  Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      DS = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Filter the dataset given conditions
      DS.withColumn('DistanceInKm', DS.col('Distance').multiply(.001));

```

*matlab.compiler.mlspark.Dataset.withColumnRenamed*

```notalanguage
  WITHCOLUMNRENAMED Method to return a new Dataset with one renamed column.
 
  Returns a new Dataset with the specified column existingName renamed as
  newName.
 
  If the existingName column doesn't exist, this is a no-op.
 
     % Example:
 
      % Create a dataset
      myLocation = '/test/*.parquet');
      myDataSet = spark...
          .read.format('parquet')...
          .option('header','true')...
          .option('inferSchema','true')...
          .load(myLocation);
 
      % Create a new dataset without the specified columns
      newDataSet = myDataSet.withColumnRenamed("UniqueCarrier", "Company");
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/Dataset.html#withColumnRenamed-java.lang.String-java.lang.String-

```

*matlab.compiler.mlspark.Dataset.write*

```notalanguage
  WRITE Obtain a DataFrameWriter from the Dataset

```

##### matlab.compiler.mlspark.functions.abs

```notalanguage
  ABS Create an abs column from a column
 
  Example:
 
      % DS is a dataset
      % Get a value column
      dtc = DS.col("x_loc")
      % Convert this to a column with absolute values
      mc = abs(dtc)

```

##### matlab.compiler.mlspark.functions.acos

```notalanguage
  ACOS Create an arc cosine column from a column
 
  The computed values are in radians
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("cos_vals")
      % Convert this to an arc cosine column
      mc = acos(dtc)

```

##### matlab.compiler.mlspark.functions.acosh

```notalanguage
  ACOSH Create a hyperbolic arc cosine column from a column
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("cosh_vals")
      % Convert this to an acosh column
      mc = acosh(dtc)
 
  Note: this function is only supported by Spark version 3.1 or newer

```

##### matlab.compiler.mlspark.functions.add_months

```notalanguage
  ADD_MONTHS Add months to a date column
 
  This function will return a new column, with a certain number of
  months added. If the number is negative, months will be subtracted.
 
  Example:
 
      % DS is a dataset
      % Get datetime column (which is still a string)
      dtc = DS.col("date")
      % Move the dates 10 days back
      dt = date_add(dtc, 10)

```

##### matlab.compiler.mlspark.functions.approx_count_distinct

```notalanguage
  approx_count_distinct returns the approximate number of distinct column elements
 
  approx_count_distinct(col) returns a column with the approximate number
  of distinct items in the input column.
 
  approx_count_distinct(col,rsd) uses the optional input rsd as the maximal
  relative standard deviation allowed by the calculation. Default val: 0.05
 
  Inputs:
      col - a dataset column name or column object
      rsd - (optional) maximum relative standard deviation allowed
            (default value = 0.05)
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc")
      % Get the approximate number of distinct values (max relative STD = 2)
      outCol = approx_count_distinct(inCol, 2.0)
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/functions.html#approx_count_distinct-org.apache.spark.sql.Column-

```

##### matlab.compiler.mlspark.functions.asin

```notalanguage
  ASIN Create an arc sine column from a column
 
  The computed values are in radians
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("sin_vals")
      % Convert this to an arc sine column
      mc = asin(dtc)

```

##### matlab.compiler.mlspark.functions.asinh

```notalanguage
  ASINH Create a hyperbolic arc sine column from a column
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("sinh_vals")
      % Convert this to an asinh column
      mc = asinh(dtc)
 
  Note: this function is only supported by Spark version 3.1 or newer

```

##### matlab.compiler.mlspark.functions.atan

```notalanguage
  ATAN Create an arc tangent column from a column
 
  The computed values are in radians
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("tan_vals")
      % Convert this to an atan column
      mc = atan(dtc)

```

##### matlab.compiler.mlspark.functions.atan2

```notalanguage
  ATAN2 Create a column based on the atan2 values of the input arguments
 
  Inputs:
      yValues - a dataset column object/name or a scalar numeric value
      xValues - a dataset column object/name or a scalar numeric value
 
      At least one of xValues, yValues must be a column object/name
 
  The computed values are in radians
 
  Example:
 
      % DS is a dataset
      % Get 2 value columns (x,y)
      xCol = DS.col("x_loc");
      yCol = DS.col("y_loc");
      % Convert this to a column with arctan values of x,y
      outCol = pow(yCol, xCol);

```

##### matlab.compiler.mlspark.functions.atanh

```notalanguage
  ATANH Create a hyperbolic arc tangent column from a column
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("tanh_vals")
      % Convert this to an atanh column
      mc = atanh(dtc)
 
  Note: this function is only supported by Spark version 3.1 or newer

```

##### matlab.compiler.mlspark.functions.ceil

```notalanguage
  CEIL Create a column of values rounded up to the nearest integer from a column of values
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a column of rounded-up values
      mc = ceil(dtc)

```

##### matlab.compiler.mlspark.functions.column

```notalanguage
  COLUMN Create a copy of an existing dataset column with the 
  specified name. 
 
  
  Example:
 
      myDataSet.withColumn("colCopyName", ...
               functions.column("originalColumnName"));

```

##### matlab.compiler.mlspark.functions.cos

```notalanguage
  COS Create a cosine column from a column of angle values (in radians)
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("angle_vals")
      % Convert this to a cosine column
      mc = cos(dtc)

```

##### matlab.compiler.mlspark.functions.cosh

```notalanguage
  COSH Create a hyperbolic cosine column from a column of values
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a hyperbolic cosine column
      mc = cosh(dtc)

```

##### matlab.compiler.mlspark.functions.current_timestamp

```notalanguage
  CURRENT_TIMESTAMP Create a current_timestamp column
 
  Example:
 
      mc = current_timestamp()

```

##### matlab.compiler.mlspark.functions.date_add

```notalanguage
  DATE_ADD Add days to a date column
 
  This function will return a new column, with a certain number of days
  added.
  Example:
 
      % DS is a dataset
      % Get datetime column (which is still a string)
      dtc = DS.col("date")
      % Move the dates one week ahead
      dt = date_add(dtc, 7)

```

##### matlab.compiler.mlspark.functions.date_format

```notalanguage
  DATE_FORMAT Create a text column from a date column in spec. format
 
      % DS is a dataset
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      fmt = "yyyy-mm-dd";
      dt = date_format(dtc, fmt)

```

##### matlab.compiler.mlspark.functions.date_sub

```notalanguage
  DATE_SUB Subtract days from a date column
 
  This function will return a new column, with a certain number of days
  subtracted.
  Example:
 
      % DS is a dataset
      % Get datetime column (which is still a string)
      dtc = DS.col("date")
      % Move the dates 10 days back
      dt = date_add(dtc, 10)

```

##### matlab.compiler.mlspark.functions.dayofmonth

```notalanguage
  DAYOFMONTH Create a day-of-month column from a datetime column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a dataset
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = dayofmonth(dtc)

```

##### matlab.compiler.mlspark.functions.dayofweek

```notalanguage
  DAYOFWEEK Create a day-of-week column from a datetime column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a dataset
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = dayofweek(dtc)

```

##### matlab.compiler.mlspark.functions.dayofyear

```notalanguage
  DAYOFYEAR Create a day-of-year column from a datetime column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a dataset
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = dayofyear(dtc)

```

##### matlab.compiler.mlspark.functions.exp

```notalanguage
  EXP Create a column of exponentials from a column of values
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a column of exponentials (e^x)
      mc = exp(dtc)

```

##### matlab.compiler.mlspark.functions.floor

```notalanguage
  FLOOR Create a column of values rounded down to the nearest integer from a column of values
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a column of rounded-down values
      mc = floor(dtc)

```

##### matlab.compiler.mlspark.functions.from_unixtime

```notalanguage
  FROM_UNIXTIME Create a column with unixtime
 
  Example:
 
      mc = from_unixtime(col)
   or
      mc = from_unixtime(col, "yyyy-MM-dd HH:mm:ss")

```

##### matlab.compiler.mlspark.functions.from_utc_timestamp

```notalanguage
  FROM_UTC_TIMESTAMP Create a column from UTC columnn
 
  Example:
 
      mc = from_utc_timestamp(col, timeZone)
   or
      mc = from_utc_timestamp(col, timeZoneCol)

```

##### matlab.compiler.mlspark.functions.hour

```notalanguage
  HOUR Create an hour column from a datetime column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a dataset
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = hour(dtc)

```

##### matlab.compiler.mlspark.functions.isnan

```notalanguage
  ISNAN Create a column of logicals indicating whether column values are NaN
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a column of logical values
      mc = isnan(dtc)

```

##### matlab.compiler.mlspark.functions.isnull

```notalanguage
  ISNULL Create a column of logicals indicating whether column values are null
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a column of logical values
      mc = isnull(dtc)

```

##### matlab.compiler.mlspark.functions.lag

```notalanguage
  LAG Create a column based on offset values in the input column
 
  lag(col,offset,defaultValue,ignoreNulls) returns a dataset column with
  the values that are at a given offset to the values in the input col,
  with an optional defaultValue for offset values outside the column (with-
  out a defaultValue, null is used for values outside the column boundary).
  ignoreNulls determines whether null values of row are included in or 
  eliminated from the calculation.
 
  This is equivalent to the LAG function in SQL.
 
  Inputs:
      col    - a dataset column object that is to be processed
      offset - (optional) offset of values to return. For example, 1
               means the values in the previous row, for all column rows.
               Default value = 1.
      defaultValue - (optional) the value to use for offset values outside
               the column boundary. This value will be used for the first
                <offset> values in the output column.
      ignoreNulls - (optional) a logical flag indicating whether or not to
               include null values in the lag calculations.
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc");
      % Convert this to a column with a lag of 2 elements
      outCol = lag(inCol, 2);
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/functions.html#lag-org.apache.spark.sql.Column-int-

```

##### matlab.compiler.mlspark.functions.lit

```notalanguage
  LIT Creates a column containing a constant value
 
  This function will return a new column
  Example:
 
      mc = column("ColName")

```

##### matlab.compiler.mlspark.functions.log

```notalanguage
  LOG Create a column based on logarithmic values of the input column
 
  log(column) returns a dataset column in which the values are the natural
  logarithm (ln) values of the corresponding values in the input column.
 
  log(base, column) returns a dataset column with the logaritm with the
  specified base of the corresponding values in the input column.
 
  Inputs:
      base - a scalar numeric value
      col  - a dataset column object/name
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc");
      % Convert this to a column with computed values
      outCol = log(inCol);      % natural log values: ln(x)
      outCol = log(inCol, 10);  % log-10 values

```

##### matlab.compiler.mlspark.functions.log10

```notalanguage
  LOG10 Create a column based on log base-10 values of the input column
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc");
      % Convert this to a column with computed values
      outCol = log10(inCol);

```

##### matlab.compiler.mlspark.functions.log1p

```notalanguage
  LOG1P Create a column based on natural log values of the input column +1
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc");
      % Convert this to a column with computed values
      outCol = log1p(inCol);

```

##### matlab.compiler.mlspark.functions.log2

```notalanguage
  LOG2 Create a column based on log base-2 values of the input column
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc");
      % Convert this to a column with computed values
      outCol = log2(inCol);

```

##### matlab.compiler.mlspark.functions.max

```notalanguage
  MAX Create a max column from a column
 
  Example:
 
      % DS is a datasetf
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = max(dtc)

```

##### matlab.compiler.mlspark.functions.mean

```notalanguage
  SUM Create a mean column from a column
 
  Example:
 
      % DS is a datasetf
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = mean(dtc)

```

##### matlab.compiler.mlspark.functions.min

```notalanguage
  MIN Create a min column from a column
 
  Example:
 
      % DS is a datasetf
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = min(dtc)

```

##### matlab.compiler.mlspark.functions.minute

```notalanguage
  MINUTE Create a minute column from a datetime column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a datasetf
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = minute(dtc)

```

##### matlab.compiler.mlspark.functions.month

```notalanguage
  MONTH Create a month column from a datetime column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a dataset
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = month(dtc)

```

##### matlab.compiler.mlspark.functions.pow

```notalanguage
  POW Create a column based on values of the bases raised to a certain power
 
  pow(baseValues, powerValues) returns a dataset column in which the values
  are the corresponding baseValues (a scalar or column) raised to the 
  corresponding values in powerValues (a scalar or column).
 
  Inputs:
      baseValues  - a dataset column object/name or a scalar numeric value
      powerValues - a dataset column object/name or a scalar numeric value
 
      At least one of baseValues, powerValues must be a column object/name
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc");
      % Convert this to a column with computed values
      outCol = pow(inCol, 2.0);  % squared values (power of 2.0)
      outCol = pow(inCol, 0.5);  % square-root values (power of 0.5)
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/functions.html#pow-org.apache.spark.sql.Column-org.apache.spark.sql.Column-

```

##### matlab.compiler.mlspark.functions.round

```notalanguage
  ROUND Create a rounded column from a column
 
  
  Example:
 
      % DS is a datasetf
      % Get datetime column
      dtc = DS.col("Temperatur")
      mc = round(dtc)
      % or
      mc = round(dtc,2)

```

##### matlab.compiler.mlspark.functions.second

```notalanguage
  SECOND Create a second column from a datetime column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a datasetf
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = second(dtc)

```

##### matlab.compiler.mlspark.functions.sin

```notalanguage
  SIN Create a sine column from a column of angle values (in radians)
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("angle_vals")
      % Convert this to a sine column
      mc = sin(dtc)

```

##### matlab.compiler.mlspark.functions.sinh

```notalanguage
  SINH Create a hyperbolic sine column from a column of values
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a hyperbolic sine column
      mc = sinh(dtc)

```

##### matlab.compiler.mlspark.functions.slice

```notalanguage
  SLICE Create a column based on a slice of values in the input column
 
  slice(col,start,length) returns a dataset column in which the values are
  all the elements in the input column col (which should be an Array type)
  from the start index in each array (or starting from the end if start is
  negative), with the specified length.
 
  For example, slice(col,3,4) is analogous to the Matlab syntax data(:,3:6)
 
  Inputs:
      col    - a dataset column object to be sliced. Must be an Array type.
      start  - index of first element (or backward from end, if negative).
               1 means the first element in each array; -1 means the last.
      length - number of elements in the requested slice of each array.
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc");
      % Convert this to a column with the 4 elements starting at index 3
      outCol = slice(inCol, 3, 4);  % get elements 3 to 6 in each inCol item
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/functions.html#slice-org.apache.spark.sql.Column-int-int-

```

##### matlab.compiler.mlspark.functions.sqrt

```notalanguage
  SQRT Create a column of square roots from a column of values
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a column of square roots (x^0.5)
      mc = sqrt(dtc)

```

##### matlab.compiler.mlspark.functions.sum

```notalanguage
  SUM Create a sum column from a column
 
  Example:
 
      % DS is a datasetf
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = sum(dtc)

```

##### matlab.compiler.mlspark.functions.tan

```notalanguage
  TAN Create a tangent column from a column of angle values (in radians)
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("angle_vals")
      % Convert this to a tangent column
      mc = tan(dtc)

```

##### matlab.compiler.mlspark.functions.tanh

```notalanguage
  TANH Create a hyperbolic tangent column from a column of values
 
  Example:
 
      % DS is a dataset
      % Get column
      dtc = DS.col("vals")
      % Convert this to a hyperbolic tangent column
      mc = tanh(dtc)

```

##### matlab.compiler.mlspark.functions.to_date

```notalanguage
  TO_DATE Create a date column from a text column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a dataset
      % Get datetime column (which is still a string)
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      dt = to_date(dtc)
 
  A second argument can be used to specify the input format, e.g.
      dt = to_date(dtc, "yyyy-MM-dd HH:mm")

```

##### matlab.compiler.mlspark.functions.to_json

```notalanguage
  TO_JSON Convert a column with StructType/ArrayType/MapType to JSON string
 
  to_json(col) returns a dataset column that contains a JSON string that 
  represents the input column's contents. Only columns that contain a map,
  struct or array are supported; other column types will cause an error.
  
  to_json(col,options) uses optional map of JSON option keys/values, as per
  https://spark.apache.org/docs/latest/sql-data-sources-json.html#data-source-option
  In addition to the options listed on that webpage, you can also specify
  the "pretty" option to get pretty (formatted) JSON generation.
  The options argument can be either a containers.Map object, Nx2 table, Nx2
  cell array of keys and values, or struct array with 'key','value' fields.
 
  Inputs:
      col - input column to process. Must contain a struct, array or map.
      options - (optional) controls how to handle the JSON conversion.
 
  Example:
 
      % DS is a dataset
      % Get a value column
      inCol = DS.col("x_loc")
      % Convert to a column with a JSON string representing the col data
      outCol = to_json(inCol)
 
  Reference:
      https://spark.apache.org/docs/latest/api/java/org/apache/spark/sql/functions.html#to_json-org.apache.spark.sql.Column-

```

##### matlab.compiler.mlspark.functions.to_timestamp

```notalanguage
  TO_TIMESTAMP Create a timestamp column from a text column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a dataset
      % Get datetime column (which is still a string)
      dtc = DS.col("date")
      % Convert this to a timestamp on the dataset
      ts = to_timestamp(dtc)
 
  A second argument can be used to specify the input format, e.g.
      ts = to_timestamp(dtc, "yyyy-MM-dd HH:mm")

```

##### matlab.compiler.mlspark.functions.to_utc_timestamp

```notalanguage
  TO_UTC_TIMESTAMP Create a UTC column from TZ columnn
 
  Example:
 
      mc = to_utc_timestamp(col, timeZone)
   or
      mc = to_utc_timestamp(col, timeZoneCol)

```

##### matlab.compiler.mlspark.functions.unix_timestamp

```notalanguage
  UNIX_TIMESTAMP Create a unix_timestamp column
 
      % Get datetime column (which is still a string)
      dtc = DS.col("date")
      ts1 = unix_timestamp()
      ts2 = unix_timestamp(dtc)
      ts2 = unix_timestamp(dtc, "yyyy-MM-dd")

```

##### matlab.compiler.mlspark.functions.weekofyear

```notalanguage
  WEEKOFYEAR Create a week-of-year column from a datetime column
 
  This function will return a new colum
  Example:
 
      % DS is a dataset
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      mc = weekofyear(dtc)

```

##### matlab.compiler.mlspark.functions.when

```notalanguage
  WHEN Creates a condition for multiple value expressions
 
 
  theColumn - the column whose values are used for the conditions
  testValue - the condition to test against (equals to)
  resultValue - the valu
  This function will return a new column
  Example:
 
      petCol = testCase.dsNames.col("Pet");
         dsN = testCase.dsNames.withColumn(...
             "testCol", ...
              functions.when(petCol, "Cat", "C")...
              .when(petCol, "Giraffe", "G")...
              .when(petCol, "Iguana", "I")...
             .sparkOtherwise("F"));

```

##### matlab.compiler.mlspark.functions.window

```notalanguage
  WINDOW Bucket rows into columns
 
  General form
  winCol = window(timeColumn, windowDuration, slideDuration, startTimeCol)

```

##### matlab.compiler.mlspark.functions.year

```notalanguage
  YEAR Create a year column from a datetime column
 
  This function will return a new dataset, with the additional column
  Example:
 
      % DS is a dataset
      % Get datetime column
      dtc = DS.col("date")
      % Convert this to a date on the dataset
      yc = year(dtc)

```


#### compiler.build.spark.SparkBuilder

```notalanguage
  SparkBuilder Class for compiling MATLAB files for Spark
 
  This class is a wrapper for the build process in different
  SparkContexts. 
  The base, and most important use case, is for building a Java
  libraries, with wrappers for making the code more palatable to Spark.
 
   Please refer to the documentation delivered in this package for
   usage examples.

```

*compiler.build.spark.SparkBuilder.genPartitionHelpers*

```notalanguage
  if ~isa(obj.BuildType, 'compiler.build.spark.buildtype.JavaLib')
      return;
  end

```

*compiler.build.spark.SparkBuilder.extendJavaClassPath*

```notalanguage
compiler.build.spark.SparkBuilder/extendJavaClassPath is a function.
    newCmd = extendJavaClassPath(obj, str)

```

*compiler.build.spark.SparkBuilder.adaptCompileCmd*

```notalanguage
              extraClassPath = join(obj.compileDependencies, ":");
              newCmd = regexprep(obj.compileCmd, '-classpath[^"]+"([^"]+)"', ...
                  ['-classpath "$1', pathsep, char(extraClassPath), '"']);

```

*compiler.build.spark.SparkBuilder.addCompileDependency*

```notalanguage
compiler.build.spark.SparkBuilder/addCompileDependency is a function.
    addCompileDependency(obj, dep)

```

*compiler.build.spark.SparkBuilder.addPackageDependency*

```notalanguage
compiler.build.spark.SparkBuilder/addPackageDependency is a function.
    addPackageDependency(obj, dep)

```

*compiler.build.spark.SparkBuilder.parseCommands*

```notalanguage
compiler.build.spark.SparkBuilder/parseCommands is a function.
    parseCommands(obj, mccOutput)

```

*compiler.build.spark.SparkBuilder.addClass*

```notalanguage
compiler.build.spark.SparkBuilder/addClass is a function.
    addClass(obj, classObj)

```

*compiler.build.spark.SparkBuilder.rerunBuild*

```notalanguage
  rerunBuild Runs the build steps after modification

```

*compiler.build.spark.SparkBuilder.build*

```notalanguage
compiler.build.spark.SparkBuilder/build is a function.
    build(obj)

```

*compiler.build.spark.SparkBuilder.mccCommand*

```notalanguage
compiler.build.spark.SparkBuilder/mccCommand is a function.
    mccStr = mccCommand(obj)

```

*compiler.build.spark.SparkBuilder.genJavaCommands*

```notalanguage
  TODO: May make more sense to generate the commands like this,
  instead of doing text replacement in the parsed ones.
   compileCmd: '"/usr/lib/jvm/java-8-openjdk-amd64/bin/javac" -J-Xmx196M -verbose
                -classpath "/local/MATLAB/R2021a/toolbox/javabuilder/jar/javabuilder.jar"
                -d "bleep/classes" "bleep/pkg/ClassOne.java" "bleep/pkg/ClassTwo.java" "bleep/pkg/PkgMCRFactory.java"
                "bleep/pkg/ClassOneRemote.java" "bleep/pkg/ClassTwoRemote.java" "bleep/pkg/package-info.java"'
       jarCmd: '"/usr/lib/jvm/java-8-openjdk-amd64/bin/jar" -vcf "bleep/pkg.jar" -C "bleep/classes" .'
       docCmd: '"/usr/lib/jvm/java-8-openjdk-amd64/bin/javadoc" -d "bleep/doc/html" -sourcepath "bleep" -classpath "/local/MATLAB/R2021a/toolbox/javabuilder/jar/javabuilder.jar" pkg'
 
  adapteCompileCmd: '"/usr/lib/jvm/java-8-openjdk-amd64/bin/javac" -J-Xmx196M -verbose
                     -classpath "/local/MATLAB/R2021a/toolbox/javabuilder/jar/javabuilder.jar:/local/EI-DTST/BigData/matlab-apache-spark/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/delta-core_2.12-0.7.0.jar:/local/EI-DTST/BigData/matlab-apache-spark/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/spark-avro_2.12-3.0.1.jar:/local/EI-DTST/BigData/matlab-apache-spark/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/matlab-spark-utility-shaded_3.0.1-0.2.7.jar"
                     -d "bleep/classes"
                     "bleep/pkg/ClassOne.java" "bleep/pkg/ClassTwo.java" "bleep/pkg/PkgMCRFactory.java"
                     "bleep/pkg/ClassOneRemote.java" "bleep/pkg/ClassTwoRemote.java" "bleep/pkg/package-info.java"
                     "bleep/pkg/ClassOneWrapper.java" "bleep/pkg/ClassTwoWrapper.java"'

```

*compiler.build.spark.SparkBuilder.clearTempPaths*

```notalanguage
compiler.build.spark.SparkBuilder/clearTempPaths is a function.
    clearTempPaths(obj)

```

*compiler.build.spark.SparkBuilder.getJavaFiles*

```notalanguage
  Will we need to CD here? Depending on context where it's
  called from. For now, assume we're calling it from the top level.

```

*compiler.build.spark.SparkBuilder.getClassPath*

```notalanguage
compiler.build.spark.SparkBuilder/getClassPath is a function.
    cp = getClassPath(obj, isCompilation)

```

*compiler.build.spark.SparkBuilder.getJavaBuilder*

```notalanguage
compiler.build.spark.SparkBuilder/getJavaBuilder is a function.
    jbPath = getJavaBuilder(~)

```

*compiler.build.spark.SparkBuilder.init*

```notalanguage
compiler.build.spark.SparkBuilder/init is a function.
    init(obj)

```

*compiler.build.spark.SparkBuilder.runCommand*

```notalanguage
compiler.build.spark.SparkBuilder/runCommand is a function.
    [r, s] = runCommand(obj, cmdStr)

```

*compiler.build.spark.SparkBuilder.fixJarName*

```notalanguage
  fixJarName Adapt Jar name for easier identification
 
  This method will add MATLAB Release and Spark Release information
  to the name.

```

*compiler.build.spark.SparkBuilder.generateSparkShellHelper*

```notalanguage
  generateSparkShellHelper Generate a shell script for interactive test

```

*compiler.build.spark.SparkBuilder.generateWrapperFile*

```notalanguage
  generateWrapperFile Generate the wrapper file for the class
 
  The generated wrapper class will contain different methods that makes
  it easier to call compiled MATLAB functions in a Spark context.

```

*compiler.build.spark.SparkBuilder.log*

```notalanguage
  log A small logger utility for the SparkBuilder
 
  The log method takes printf-like arguments. It's output depends on
  the setting of the Verbose property

```

*compiler.build.spark.SparkBuilder.needsPostProcessing*

```notalanguage
  needsPostProcessing Check if wrapper code should be generated

```


#### compiler.build.spark.File

```notalanguage
  File A class for describing files for Spark compiler

```

*compiler.build.spark.File.getUDFInfo*

```notalanguage
compiler.build.spark.File/getUDFInfo is a function.
    [udfName, udfType, callTypes, UDF] = getUDFInfo(obj)

```

*compiler.build.spark.File.writeMethodComment*

```notalanguage
compiler.build.spark.File/writeMethodComment is a function.
    writeMethodComment(obj, funcName, SW)

```

*compiler.build.spark.File.getArgArray*

```notalanguage
   getArgArray Create array of arguments and their types
 
 
  [a,b,c] = f.getArgArray('in', 'arg')
  a =
    1x2 string array
      "arg1"    "arg2"
  b =
    1x2 string array
      "Double"    "Double"
  c =
      "Double arg1, Double arg2"

```

*compiler.build.spark.File.generateArgNames*

```notalanguage
compiler.build.spark.File/generateArgNames is a function.
    names = generateArgNames(obj, direction, base)

```

*compiler.build.spark.File.getOutSparkType*

```notalanguage
compiler.build.spark.File/getOutSparkType is a function.
    [outType, outTypeDefinition] = getOutSparkType(obj)

```

*compiler.build.spark.File.getEncoderCreator*

```notalanguage
   getEncoderCreator Encoder for output of map

```

*compiler.build.spark.File.getEncoderStruct*

```notalanguage
compiler.build.spark.File/getEncoderStruct is a function.
    entry = getEncoderStruct(obj)

```

*compiler.build.spark.File.getReturnType*

```notalanguage
compiler.build.spark.File/getReturnType is a function.
    retType = getReturnType(obj)

```

*compiler.build.spark.File.init*

```notalanguage
compiler.build.spark.File/init is a function.
    init(obj)

```


#### compiler.build.spark.JavaClass

```notalanguage
  JAVACLASS TODO

```

*compiler.build.spark.JavaClass.genPartitionTableFile*

```notalanguage
compiler.build.spark.JavaClass/genPartitionTableFile is a function.
    outName = genPartitionTableFile(obj, F, partitionName)

```

*compiler.build.spark.JavaClass.genPartitionFile*

```notalanguage
compiler.build.spark.JavaClass/genPartitionFile is a function.
    outName = genPartitionFile(obj, F, partitionName)

```

*compiler.build.spark.JavaClass.genPartitionHelpers*

```notalanguage
  First, remove any ephemeral files

```

*compiler.build.spark.JavaClass.runInjections*

```notalanguage
compiler.build.spark.JavaClass/runInjections is a function.
    runInjections(obj, package)

```

*compiler.build.spark.JavaClass.getEphemeralFileNames*

```notalanguage
compiler.build.spark.JavaClass/getEphemeralFileNames is a function.
    fileNames = getEphemeralFileNames(obj)

```

*compiler.build.spark.JavaClass.getFileNames*

```notalanguage
compiler.build.spark.JavaClass/getFileNames is a function.
    fileNames = getFileNames(obj)

```

*compiler.build.spark.JavaClass.addInjection*

```notalanguage
compiler.build.spark.JavaClass/addInjection is a function.
    addInjection(obj, func)

```

*compiler.build.spark.JavaClass.getClassBuild*

```notalanguage
compiler.build.spark.JavaClass/getClassBuild is a function.
    build = getClassBuild(obj)

```

*compiler.build.spark.JavaClass.getBuildTarget*

```notalanguage
compiler.build.spark.JavaClass/getBuildTarget is a function.
    buildTgt = getBuildTarget(obj, pkg)

```

*compiler.build.spark.JavaClass.addBuildFile*

```notalanguage
compiler.build.spark.JavaClass/addBuildFile is a function.
    addBuildFile(obj, file, ephemeral)

```

*compiler.build.spark.JavaClass.fixSerializable*

```notalanguage
  fixSerializable Add Serializable to classes
 
  This adds a implements java.io.Serializable to certain classes, in
  the releases of MATLAB where it wouldn't be present.

```

*compiler.build.spark.JavaClass.genSparkWrappers*

```notalanguage
  genSparkWrappers File to generate helper functions in Java

```


#### compiler.build.spark.ArgTypeInfo

```notalanguage
  ArgTypeInfo TODO

```

*compiler.build.spark.ArgTypeInfo.getPrimitiveJavaType*

```notalanguage
compiler.build.spark.ArgTypeInfo/getPrimitiveJavaType is a function.
    primitiveName = getPrimitiveJavaType(obj)

```

*compiler.build.spark.ArgTypeInfo.getReturnType*

```notalanguage
compiler.build.spark.ArgTypeInfo/getReturnType is a function.
    retType = getReturnType(obj)

```

*compiler.build.spark.ArgTypeInfo.getEncoderCreator*

```notalanguage
compiler.build.spark.ArgTypeInfo/getEncoderCreator is a function.
    enc = getEncoderCreator(obj)

```

*compiler.build.spark.ArgTypeInfo.getRowInputValue*

```notalanguage
compiler.build.spark.ArgTypeInfo/getRowInputValue is a function.
    str = getRowInputValue(obj, src, argName)

```

*compiler.build.spark.ArgTypeInfo.getJavaType*

```notalanguage
compiler.build.spark.ArgTypeInfo/getJavaType is a function.
    T = getJavaType(obj)

```

*compiler.build.spark.ArgTypeInfo.convertMWValue2*

```notalanguage
compiler.build.spark.ArgTypeInfo/convertMWValue2 is a function.
    str = convertMWValue2(obj, srcData, retName)

```

*compiler.build.spark.ArgTypeInfo.convertMWValue*

```notalanguage
compiler.build.spark.ArgTypeInfo/convertMWValue is a function.
    str = convertMWValue(obj, srcData)

```

*compiler.build.spark.ArgTypeInfo.defineNullVariable*

```notalanguage
compiler.build.spark.ArgTypeInfo/defineNullVariable is a function.
    str = defineNullVariable(obj, varName)

```

*compiler.build.spark.ArgTypeInfo.instantiateValue*

```notalanguage
compiler.build.spark.ArgTypeInfo/instantiateValue is a function.
    str = instantiateValue(obj, srcData)

```

*compiler.build.spark.ArgTypeInfo.isScalarData*

```notalanguage
compiler.build.spark.ArgTypeInfo/isScalarData is a function.
    ret = isScalarData(obj)

```

*compiler.build.spark.ArgTypeInfo.init*

```notalanguage
compiler.build.spark.ArgTypeInfo/init is a function.
    init(obj)

```


#### compiler.build.spark.buildtype.BaseType

```notalanguage
  BaseType Base type for Spark Build types

```

*compiler.build.spark.buildtype.BaseType.getClassBuild*

```notalanguage
compiler.build.spark.buildtype.BaseType/getClassBuild is a function.
    obj = compiler.build.spark.buildtype.BaseType

```

*compiler.build.spark.buildtype.BaseType.getLinkArgument*

```notalanguage
compiler.build.spark.buildtype.BaseType/getLinkArgument is a function.
    obj = compiler.build.spark.buildtype.BaseType

```

*compiler.build.spark.buildtype.BaseType.getBuildTarget*

```notalanguage
compiler.build.spark.buildtype.BaseType/getBuildTarget is a function.
    obj = compiler.build.spark.buildtype.BaseType

```

*compiler.build.spark.buildtype.BaseType.mccOpts*

```notalanguage
compiler.build.spark.buildtype.BaseType/mccOpts is a function.
    obj = compiler.build.spark.buildtype.BaseType

```

*compiler.build.spark.buildtype.BaseType.log*

```notalanguage
 LOG    Natural logarithm.
    LOG(X) is the natural logarithm of the elements of X.
    Complex results are produced if X is not positive.
 
    See also LOG1P, LOG2, LOG10, EXP, LOGM, REALLOG.

```


#### compiler.build.spark.buildtype.JavaLib

```notalanguage
  JavaLib BuildType for java libraries

```

*compiler.build.spark.buildtype.JavaLib.getClassBuild*

```notalanguage
compiler.build.spark.buildtype.JavaLib/getClassBuild is a function.
    str = getClassBuild(obj)

```

*compiler.build.spark.buildtype.JavaLib.getLinkArgument*

```notalanguage
compiler.build.spark.buildtype.JavaLib/getLinkArgument is a function.
    str = getLinkArgument(obj)

```

*compiler.build.spark.buildtype.JavaLib.getBuildTarget*

```notalanguage
compiler.build.spark.buildtype.JavaLib/getBuildTarget is a function.
    str = getBuildTarget(obj)

```

*compiler.build.spark.buildtype.JavaLib.mccOpts*

```notalanguage
compiler.build.spark.buildtype.JavaLib/mccOpts is a function.
    opts = mccOpts(~)

```


#### compiler.build.spark.buildtype.SparkApi

```notalanguage
  SparkApi BuildType for spark (used with tall)

```

*compiler.build.spark.buildtype.SparkApi.getClassBuild*

```notalanguage
compiler.build.spark.buildtype.SparkApi/getClassBuild is a function.
    str = getClassBuild(obj)

```

*compiler.build.spark.buildtype.SparkApi.getLinkArgument*

```notalanguage
compiler.build.spark.buildtype.SparkApi/getLinkArgument is a function.
    str = getLinkArgument(obj)

```

*compiler.build.spark.buildtype.SparkApi.getBuildTarget*

```notalanguage
compiler.build.spark.buildtype.SparkApi/getBuildTarget is a function.
    str = getBuildTarget(obj)

```

*compiler.build.spark.buildtype.SparkApi.mccOpts*

```notalanguage
compiler.build.spark.buildtype.SparkApi/mccOpts is a function.
    opts = mccOpts(~)

```


#### compiler.build.spark.buildtype.SparkTall

```notalanguage
  SparkTall BuildType for spark (used with tall)

```

*compiler.build.spark.buildtype.SparkTall.getClassBuild*

```notalanguage
compiler.build.spark.buildtype.SparkTall/getClassBuild is a function.
    str = getClassBuild(obj)

```

*compiler.build.spark.buildtype.SparkTall.getLinkArgument*

```notalanguage
compiler.build.spark.buildtype.SparkTall/getLinkArgument is a function.
    str = getLinkArgument(~)

```

*compiler.build.spark.buildtype.SparkTall.getBuildTarget*

```notalanguage
compiler.build.spark.buildtype.SparkTall/getBuildTarget is a function.
    str = getBuildTarget(obj)

```

*compiler.build.spark.buildtype.SparkTall.mccOpts*

```notalanguage
compiler.build.spark.buildtype.SparkTall/mccOpts is a function.
    opts = mccOpts(~)

```


#### compiler.build.spark.types.ArgType

```notalanguage
  ArgType Base class for argument types
 
  Subclasses are instances of specific data types, e.g. Double, Float,
  Boolean, etc. The names of the Subclasses will coincide with the Java
  type names.
  Compound types may be be subclassed too, or simlpy created by virtue
  of being an array.

```

*compiler.build.spark.types.ArgType.isScalarData*

```notalanguage
compiler.build.spark.types.ArgType/isScalarData is a function.
    ret = isScalarData(obj)

```

*compiler.build.spark.types.ArgType.instantiate*

```notalanguage
compiler.build.spark.types.ArgType.instantiate is a function.
    obj = compiler.build.spark.types.ArgType.instantiate(typeName, varargin)

```

*compiler.build.spark.types.ArgType.convertMWToRetValue*

```notalanguage
compiler.build.spark.types.ArgType/convertMWToRetValue is a function.
    obj = compiler.build.spark.types.ArgType

```

*compiler.build.spark.types.ArgType.getEncoderInstantiation*

```notalanguage
compiler.build.spark.types.ArgType/getEncoderInstantiation is a function.
    obj = compiler.build.spark.types.ArgType

```

*compiler.build.spark.types.ArgType.getEncoderType*

```notalanguage
compiler.build.spark.types.ArgType/getEncoderType is a function.
    obj = compiler.build.spark.types.ArgType

```

*compiler.build.spark.types.ArgType.getPrimitiveJavaType*

```notalanguage
compiler.build.spark.types.ArgType/getPrimitiveJavaType is a function.
    primitiveName = getPrimitiveJavaType(obj)

```

*compiler.build.spark.types.ArgType.getJavaType*

```notalanguage
compiler.build.spark.types.ArgType/getJavaType is a function.
    T = getJavaType(obj)

```

*compiler.build.spark.types.ArgType.declareAndSetRowValue*

```notalanguage
compiler.build.spark.types.ArgType/declareAndSetRowValue is a function.
    str = declareAndSetRowValue(obj, srcData, inArgName)

```

*compiler.build.spark.types.ArgType.instantiateMWValue*

```notalanguage
  instantiateMWValue - Instantiate MW type Java object
  Arguments:
   src - a text string describing the variable to use
   castArgument [optional] - a boolean stating if we should use
   explicit casting (in case it's just an Object. Default value
   is false.

```

*compiler.build.spark.types.ArgType.getEncoderCreator*

```notalanguage
compiler.build.spark.types.ArgType/getEncoderCreator is a function.
    enc = getEncoderCreator(obj)

```

*compiler.build.spark.types.ArgType.getMWArgType*

```notalanguage
compiler.build.spark.types.ArgType/getMWArgType is a function.
    mwType = getMWArgType(obj)

```

*compiler.build.spark.types.ArgType.getRowInputValue*

```notalanguage
compiler.build.spark.types.ArgType/getRowInputValue is a function.
    str = getRowInputValue(obj, src, argName)

```

*compiler.build.spark.types.ArgType.getUDFFuncArgType*

```notalanguage
compiler.build.spark.types.ArgType/getUDFFuncArgType is a function.
    argType = getUDFFuncArgType(obj)

```

*compiler.build.spark.types.ArgType.getFuncArgType*

```notalanguage
compiler.build.spark.types.ArgType/getFuncArgType is a function.
    argType = getFuncArgType(obj)

```

*compiler.build.spark.types.ArgType.getReturnType*

```notalanguage
compiler.build.spark.types.ArgType/getReturnType is a function.
    retType = getReturnType(obj)

```

*compiler.build.spark.types.ArgType.getFuncArgTypes*

```notalanguage
compiler.build.spark.types.ArgType/getFuncArgTypes is a function.
    types = getFuncArgTypes(obj)

```

*compiler.build.spark.types.ArgType.getReturnTypes*

```notalanguage
compiler.build.spark.types.ArgType/getReturnTypes is a function.
    types = getReturnTypes(obj)

```

*compiler.build.spark.types.ArgType.init*

```notalanguage
compiler.build.spark.types.ArgType/init is a function.
    init(obj)

```


#### compiler.build.spark.types.Boolean

```notalanguage
compiler.build.spark.types.Boolean is a class.
    obj = compiler.build.spark.types.Boolean(varargin)

```

*compiler.build.spark.types.Boolean.convertMWToRetValue*

```notalanguage
compiler.build.spark.types.Boolean/convertMWToRetValue is a function.
    str = convertMWToRetValue(obj, srcData)

```

*compiler.build.spark.types.Boolean.getEncoderInstantiation*

```notalanguage
compiler.build.spark.types.Boolean/getEncoderInstantiation is a function.
    encInst = getEncoderInstantiation(obj)

```

*compiler.build.spark.types.Boolean.getEncoderType*

```notalanguage
compiler.build.spark.types.Boolean/getEncoderType is a function.
    encType = getEncoderType(obj)

```


#### compiler.build.spark.types.Double

```notalanguage
compiler.build.spark.types.Double is a class.
    obj = compiler.build.spark.types.Double(varargin)

```

*compiler.build.spark.types.Double.convertMWToRetValue*

```notalanguage
compiler.build.spark.types.Double/convertMWToRetValue is a function.
    str = convertMWToRetValue(obj, srcData)

```

*compiler.build.spark.types.Double.getEncoderInstantiation*

```notalanguage
compiler.build.spark.types.Double/getEncoderInstantiation is a function.
    encInst = getEncoderInstantiation(obj)

```

*compiler.build.spark.types.Double.getEncoderType*

```notalanguage
compiler.build.spark.types.Double/getEncoderType is a function.
    encType = getEncoderType(obj)

```


#### compiler.build.spark.types.Float

```notalanguage
compiler.build.spark.types.Float is a class.
    obj = compiler.build.spark.types.Float(varargin)

```

*compiler.build.spark.types.Float.convertMWToRetValue*

```notalanguage
compiler.build.spark.types.Float/convertMWToRetValue is a function.
    str = convertMWToRetValue(obj, srcData)

```

*compiler.build.spark.types.Float.getEncoderInstantiation*

```notalanguage
compiler.build.spark.types.Float/getEncoderInstantiation is a function.
    encInst = getEncoderInstantiation(obj)

```

*compiler.build.spark.types.Float.getEncoderType*

```notalanguage
compiler.build.spark.types.Float/getEncoderType is a function.
    encType = getEncoderType(obj)

```


#### compiler.build.spark.types.Integer

```notalanguage
compiler.build.spark.types.Integer is a class.
    obj = compiler.build.spark.types.Integer(varargin)

```

*compiler.build.spark.types.Integer.convertMWToRetValue*

```notalanguage
compiler.build.spark.types.Integer/convertMWToRetValue is a function.
    str = convertMWToRetValue(obj, srcData)

```

*compiler.build.spark.types.Integer.getEncoderInstantiation*

```notalanguage
compiler.build.spark.types.Integer/getEncoderInstantiation is a function.
    encInst = getEncoderInstantiation(obj)

```

*compiler.build.spark.types.Integer.getEncoderType*

```notalanguage
compiler.build.spark.types.Integer/getEncoderType is a function.
    encType = getEncoderType(obj)

```


#### compiler.build.spark.types.Long

```notalanguage
compiler.build.spark.types.Long is a class.
    obj = compiler.build.spark.types.Long(varargin)

```

*compiler.build.spark.types.Long.convertMWToRetValue*

```notalanguage
compiler.build.spark.types.Long/convertMWToRetValue is a function.
    str = convertMWToRetValue(obj, srcData)

```

*compiler.build.spark.types.Long.getEncoderInstantiation*

```notalanguage
compiler.build.spark.types.Long/getEncoderInstantiation is a function.
    encInst = getEncoderInstantiation(obj)

```

*compiler.build.spark.types.Long.getEncoderType*

```notalanguage
compiler.build.spark.types.Long/getEncoderType is a function.
    encType = getEncoderType(obj)

```


#### compiler.build.spark.types.Short

```notalanguage
compiler.build.spark.types.Short is a class.
    obj = compiler.build.spark.types.Short(varargin)

```

*compiler.build.spark.types.Short.convertMWToRetValue*

```notalanguage
compiler.build.spark.types.Short/convertMWToRetValue is a function.
    str = convertMWToRetValue(obj, srcData)

```

*compiler.build.spark.types.Short.getEncoderInstantiation*

```notalanguage
compiler.build.spark.types.Short/getEncoderInstantiation is a function.
    encInst = getEncoderInstantiation(obj)

```

*compiler.build.spark.types.Short.getEncoderType*

```notalanguage
compiler.build.spark.types.Short/getEncoderType is a function.
    encType = getEncoderType(obj)

```


#### compiler.build.spark.types.String

```notalanguage
compiler.build.spark.types.String is a class.
    obj = compiler.build.spark.types.String(varargin)

```

*compiler.build.spark.types.String.convertMWToRetValue*

```notalanguage
compiler.build.spark.types.String/convertMWToRetValue is a function.
    str = convertMWToRetValue(obj, srcData)

```

*compiler.build.spark.types.String.getEncoderInstantiation*

```notalanguage
compiler.build.spark.types.String/getEncoderInstantiation is a function.
    encInst = getEncoderInstantiation(obj)

```

*compiler.build.spark.types.String.getEncoderType*

```notalanguage
compiler.build.spark.types.String/getEncoderType is a function.
    encType = getEncoderType(obj)

```

##### matlab.sparkutils.getMatlabSparkUtilityFullName

```notalanguage
  getMatlabSparkUtilityFullName Retrieve name of Spark Utility
 
  Retrieve name of matlab-spark-utility jar used with current
  configuration.
 
  matlabJar = matlab.sparkutils.getMatlabSparkUtilityFullName()
  matlabJar = 
      "matlab-spark-utility-shaded_3.0.1-0.2.7.jar"
      
  Additionally retrieve the Jar folder too.
 
  matlabJar =
      "/some/folder/matlab-apache-spark/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/matlab-spark-utility-shaded_3.0.1-0.2.7.jar"
      
  To get the name of the shaded or unshaded jar, use the argument
  shaded, e.g.
 
  matlabJar = matlab.sparkutils.getMatlabSparkUtilityFullName('shaded', false)
  matlabJar =
      "matlab-spark-utility_3.0.1-0.2.7.jar"

```

##### matlab.sparkutils.datatypeMapper

```notalanguage
  datatypeMapper Do mappings of datatypes
 
  This helps with mapping of datatypes between matlab, Java and Spark.
  entry = matlab.sparkutils.datatypeMapper(from, name)
  returns the types for matlab, java and spark (values for from) for
  the datatype named 'name'.
  entry = matlab.sparkutils.datatypeMapper('matlab', 'single')
  entry =
    struct with fields:
 
      MATLABType: "single"
        JavaType: "Float"
       SparkType: "FloatType"
  entry = matlab.sparkutils.datatypeMapper('java', 'String')
  entry =
    struct with fields:
 
      MATLABType: "string"
        JavaType: "String"
       SparkType: "StringType"
 
  Call without arguments to see what types are supported.

```

##### matlab.sparkutils.getMatlabSparkExtraJars

```notalanguage
  getMatlabSparkExtraJars Retrieve names of jars needed for Spark
 
  Retrieve the jar files for this Spark setup. The result depends on
  the current configuration.
 
  extraJars = matlab.sparkutils.getMatlabSparkExtraJars
  extraJars =
    3x1 string array
      "/some/path/matlab-apache-spark/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/delta-core_2.12-0.7.0.jar"
      "/some/path/matlab-apache-spark/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/spark-avro_2.12-3.0.1.jar"
      "/some/path/matlab-apache-spark/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/matlab-spark-utility-spark_3.0.1-0.2.6.jar"
 
  To only get the file names, use an argument of false:
  extraJars = matlab.sparkutils.getMatlabSparkExtraJars(false)
  extraJars =
    3x1 string array
      "delta-core_2.12-0.7.0.jar"
      "spark-avro_2.12-3.0.1.jar"
      "matlab-spark-utility-spark_3.0.1-0.2.6.jar"

```

##### matlab.sparkutils.getMatlabSparkUtilityVersion

```notalanguage
  getMatlabSparkUtilityVersion Retrieve version from pom-file

```

##### matlab.sparkutils.getSystemSparkVersion

```notalanguage
  getSystemSparkVersion Query Spark about its version

```

##### matlab.sparkutils.getVersionFromSparkHome

```notalanguage
  getVersionFromSparkHome Retrieve version from SPARK_HOME

```

##### matlab.sparkutils.queryMaven

```notalanguage
  queryMaven Query Maven for a specific artifact
 
  This function will query maven for a specific artifact and
  return the results in JSON.
  It takes string argument pairs, that corresponds to query arguments
  in the API. Examples are:
  g - groupId
  a - artifactId
  v - version
 
  Example, query for the artifact scala-compiler with version 2.12.10
  result = matlab.sparkutils.queryMaven('a', 'scala-compiler', 'v', '2.12.10');

```


#### matlab.sparkutils.Config

```notalanguage
  Config Class to handle Spark configurations
 
  This class will make it easier to use different versions of Spark,
  and to build the Jar files and classpath files necessary.
 
  The standard configuration is kept in a config file, in JSON, shipped
  with this package, but settings can be changed and written to disk.
  If written to disk, they will be written to the current users
  prefdir.
 
  It is also possible to use a Configuration "in memory", and change it
  there. The methods and functions that need a config setting will use
  the getInMemoryConfig method, i.e.
 
  C = matlab.sparkutils.Config.getInMemoryConfig
 
  This is a Config that can be changed, and which will be used,
  e.g. to change what Spark cluster to connect to.

```

*matlab.sparkutils.Config.editConfig*

```notalanguage
matlab.sparkutils.Config/editConfig is a function.
    editConfig(obj)

```

*matlab.sparkutils.Config.saveConfig*

```notalanguage
matlab.sparkutils.Config/saveConfig is a function.
    saveConfig(obj)

```

*matlab.sparkutils.Config.genMavenBuildCommand*

```notalanguage
matlab.sparkutils.Config/genMavenBuildCommand is a function.
    mvnCmd = genMavenBuildCommand(obj, envType)

```

*matlab.sparkutils.Config.getSparkMajorVersion*

```notalanguage
  GETSPARKMAJORVERSION Retrieve Spark major version used.

```

*matlab.sparkutils.Config.getLibraries*

```notalanguage
matlab.sparkutils.Config/getLibraries is a function.
    libs = getLibraries(obj)

```

*matlab.sparkutils.Config.getCurrentJars*

```notalanguage
matlab.sparkutils.Config/getCurrentJars is a function.
    jars = getCurrentJars(obj)

```

*matlab.sparkutils.Config.getCurrentEntry*

```notalanguage
matlab.sparkutils.Config/getCurrentEntry is a function.
    entry = getCurrentEntry(obj)

```

*matlab.sparkutils.Config.loadConfig*

```notalanguage
matlab.sparkutils.Config/loadConfig is a function.
    loadConfig(obj)

```

*matlab.sparkutils.Config.setCurrentVersionFromSparkHome*

```notalanguage
matlab.sparkutils.Config/setCurrentVersionFromSparkHome is a function.
    setCurrentVersionFromSparkHome(obj)

```

*matlab.sparkutils.Config.getUserConfigFile*

```notalanguage
matlab.sparkutils.Config/getUserConfigFile is a function.
    cfg = getUserConfigFile(~)

```

*matlab.sparkutils.Config.getDefaultConfigFile*

```notalanguage
matlab.sparkutils.Config/getDefaultConfigFile is a function.
    cfg = getDefaultConfigFile(~)

```

*matlab.sparkutils.Config.getConfigFile*

```notalanguage
matlab.sparkutils.Config/getConfigFile is a function.
    cfg = getConfigFile(obj)

```

*matlab.sparkutils.Config.getInMemoryConfig*

```notalanguage
  getInMemoryConfig Returns a config that is kept in memory
  This allows the user to change a config in a session, without
  writing the changes to a configuration file.
  This makes it possible to use different configurations in
  parallel sessions, which may be useful in testing, or when a
  user has no write privileges.

```

*matlab.sparkutils.Config.setInMemoryVersion*

```notalanguage
matlab.sparkutils.Config.setInMemoryVersion is a function.
    matlab.sparkutils.Config.setInMemoryVersion(versionString)

```

*matlab.sparkutils.Config.overwriteUserConfig*

```notalanguage
  overwriteUserConfig Overwrite user config with defaults
  This may be needed if user config is present, but the
  structure of the default config has changed.

```


#### matlab.sparkutils.JavaWriter

```notalanguage
  JavaWriter - Helper class for creating a Java file

```

*matlab.sparkutils.JavaWriter.delete*

```notalanguage
 DELETE   Delete a handle object.
    DELETE(H) deletes all handle objects in array H. After the delete 
    function call, H is an array of invalid objects.
 
    See also MATLAB.SPARKUTILS.JAVAWRITER, MATLAB.SPARKUTILS.JAVAWRITER/ISVALID, CLEAR

Help for matlab.sparkutils.JavaWriter/delete is inherited from superclass handle

```

*matlab.sparkutils.JavaWriter.getMCRFactoryName*

```notalanguage
matlab.sparkutils.JavaWriter/getMCRFactoryName is a function.
    name = getMCRFactoryName(obj)

```

*matlab.sparkutils.JavaWriter.lastPackageLevel*

```notalanguage
matlab.sparkutils.JavaWriter/lastPackageLevel is a function.
    name = lastPackageLevel(obj)

```

*matlab.sparkutils.JavaWriter.addVariable*

```notalanguage
  addVariable Adds a member variable to the class
  JW.addVariable("public int num");
  printf arguments can also be used, i.e.
  JW.addVariable("public %s %s", typeName, memberName);

```

*matlab.sparkutils.JavaWriter.addEncoder*

```notalanguage
  addEncoder Adds an encoder. 
 
  The encoder info is created by a method in the File class,

```

*matlab.sparkutils.JavaWriter.addMethod*

```notalanguage
matlab.sparkutils.JavaWriter/addMethod is a function.
    addMethod(obj, str, atStart)

```

*matlab.sparkutils.JavaWriter.newMethod*

```notalanguage
  newMethod Return a StringWriter for a method

```

*matlab.sparkutils.JavaWriter.addImport*

```notalanguage
  addImport Adds an import string
  addImport("my.fine.Class")
  will produce the line
  import my.fine.Class;

```

*matlab.sparkutils.JavaWriter.writeFile*

```notalanguage
              pkgParts = split(obj.Package, ".");
              if isempty(obj.PathPrepend)
                  filePath = fullfile(pkgParts{:});
              else
                  filePath = fullfile(obj.PathPrepend, pkgParts{:});
              end
              if ~exist(filePath, 'dir')
                  mkdir(filePath);
              end
              fileName = [fullfile(filePath, char(obj.ClassName)), '.java'];

```


#### matlab.sparkutils.SparkDataframeDatastore

```notalanguage
  SparkDataframeDatastore Class to help build the javaclasspath necessary for Spark

```

*matlab.sparkutils.SparkDataframeDatastore.preview*

```notalanguage
 PREVIEW   Preview the data contained in the datastore.
    Returns a small amount of data from the start of the datastore.
    This is the default implementation of the preview method,
    subclasses can implement an efficient version of this method
    by returning a smaller subset of the data directly from the
    read method. Subclasses should also consider implementing a
    more efficient version of this method for improved tall
    array construction performance. The datatype of the output
    should be the same as that of the read method. In the
    provided default implementation, a copy of the datastore is
    first reset. The read method is called on this copied
    datastore. The first 8 rows in the output from the read
    method call are returned as output of the preview method.
 
    See also matlab.io.Datastore, read, hasdata, reset, readall,
    progress.

```

*matlab.sparkutils.SparkDataframeDatastore.read*

```notalanguage
 READ   Read data and information about the extracted data.
    Return the data extracted from the datastore in the
    appropriate form for this datastore. Also return
    information about where the data was extracted from in
    the datastore. Both the outputs are required to be
    returned from the read method, and can be of any type.
    info is recommended to be a struct with information
    about the chunk of data read. data represents the
    underlying class of tall, if tall is created on top of
    this datastore. This is an abstract method and must be
    implemented by the subclasses.
 
    See also matlab.sparkutils.SparkDataframeDatastore, hasdata, reset, readall, preview,
    progress.

Help for matlab.sparkutils.SparkDataframeDatastore/read is inherited from superclass matlab.io.Datastore

```

*matlab.sparkutils.SparkDataframeDatastore.reset*

```notalanguage
 RESET   Reset to the start of the data.
    Reset the datastore to the state where no data has been
    read from it. This is an abstract method and must be
    implemented by the subclasses.
    In the provided example, the datastore is reset to point to the
    first file (and first partition) in the datastore.
 
    See also matlab.sparkutils.SparkDataframeDatastore, read, hasdata, readall, preview,
    progress.

Help for matlab.sparkutils.SparkDataframeDatastore/reset is inherited from superclass matlab.io.Datastore

```

*matlab.sparkutils.SparkDataframeDatastore.hasdata*

```notalanguage
 HASDATA   Returns true if more data is available.
    Return logical scalar indicating availability of data. This
    method should be called before calling read. This is an
    abstract method and must be implemented by the subclasses.
    hasdata is used in conjunction with read to read all the data
    within the datastore. Following is an example usage:
 
    ds = myDatastore(...);
    while hasdata(ds)
        [data, info] = read(ds);
    end
 
    % reset to read from start of the data
    reset(ds);
    [data, info] = read(ds);
 
    See also matlab.sparkutils.SparkDataframeDatastore, read, reset, readall, preview,
    progress.

Help for matlab.sparkutils.SparkDataframeDatastore/hasdata is inherited from superclass matlab.io.Datastore

```

*matlab.sparkutils.SparkDataframeDatastore.progress*

```notalanguage
  Determine percentage of data read from datastore

```


#### matlab.sparkutils.SparkSessionHandler

```notalanguage
  SparkSessionHandler Class to handle Spark sessions
 
  This class will make it easier to reuse different Spark sessions,
  without always recreating them.

```

*matlab.sparkutils.SparkSessionHandler.addSession*

```notalanguage
matlab.sparkutils.SparkSessionHandler/addSession is a function.
    idx = addSession(obj, sparkMaster, sparkSession)

```

*matlab.sparkutils.SparkSessionHandler.findSession*

```notalanguage
matlab.sparkutils.SparkSessionHandler/findSession is a function.
    idx = findSession(obj, sparkMaster)

```

*matlab.sparkutils.SparkSessionHandler.getSessionHandler*

```notalanguage
matlab.sparkutils.SparkSessionHandler.getSessionHandler is a function.
    SH = matlab.sparkutils.SparkSessionHandler.getSessionHandler

```

*matlab.sparkutils.SparkSessionHandler.deleteSessions*

```notalanguage
matlab.sparkutils.SparkSessionHandler.deleteSessions is a function.

```

*matlab.sparkutils.SparkSessionHandler.listSessions*

```notalanguage
matlab.sparkutils.SparkSessionHandler.listSessions is a function.
    sessions = matlab.sparkutils.SparkSessionHandler.listSessions

```

*matlab.sparkutils.SparkSessionHandler.getSession*

```notalanguage
matlab.sparkutils.SparkSessionHandler.getSession is a function.
    spark = matlab.sparkutils.SparkSessionHandler.getSession(sparkMaster)

```


#### matlab.sparkutils.StringWriter

```notalanguage
  StringWriter - Helper class for writing to files or temporary strings

```

*matlab.sparkutils.StringWriter.delete*

```notalanguage
 DELETE   Delete a handle object.
    DELETE(H) deletes all handle objects in array H. After the delete 
    function call, H is an array of invalid objects.
 
    See also MATLAB.SPARKUTILS.STRINGWRITER, MATLAB.SPARKUTILS.STRINGWRITER/ISVALID, CLEAR

Help for matlab.sparkutils.StringWriter/delete is inherited from superclass handle

```

*matlab.sparkutils.StringWriter.unindent*

```notalanguage
matlab.sparkutils.StringWriter/unindent is a function.
    unindent(this)

```

*matlab.sparkutils.StringWriter.indent*

```notalanguage
matlab.sparkutils.StringWriter/indent is a function.
    indent(this)

```

*matlab.sparkutils.StringWriter.tab*

```notalanguage
matlab.sparkutils.StringWriter/tab is a function.
    tab(this, num)

```

*matlab.sparkutils.StringWriter.insertLines*

```notalanguage
  insertLines Splits on \n and inserts lines

```

*matlab.sparkutils.StringWriter.nl*

```notalanguage
matlab.sparkutils.StringWriter/nl is a function.
    nl(this)

```

*matlab.sparkutils.StringWriter.pf*

```notalanguage
  Short-hand for printf

```

*matlab.sparkutils.StringWriter.insertFile*

```notalanguage
matlab.sparkutils.StringWriter/insertFile is a function.
    insertFile(this, fileName)

```

*matlab.sparkutils.StringWriter.getString*

```notalanguage
matlab.sparkutils.StringWriter/getString is a function.
    str = getString(this)

```

*matlab.sparkutils.StringWriter.getProtectString*

```notalanguage
matlab.sparkutils.StringWriter/getProtectString is a function.
    str = getProtectString(this)

```

*matlab.sparkutils.StringWriter.closeFile*

```notalanguage
matlab.sparkutils.StringWriter/closeFile is a function.
    closeFile(this)

```


#### matlab.sparkutils.PomDep

```notalanguage
  PomDef Class to handle pom dependencies

```

*matlab.sparkutils.PomDep.initData*

```notalanguage
matlab.sparkutils.PomDep/initData is a function.
    initData(obj, lines)

```


#### matlab.sparkutils.PomGenerator

```notalanguage
  Class to handle Spark Pom-file generation

```

*matlab.sparkutils.PomGenerator.getJarList*

```notalanguage
matlab.sparkutils.PomGenerator/getJarList is a function.
    jars = getJarList(obj)

```

*matlab.sparkutils.PomGenerator.readDepTreeFile*

```notalanguage
matlab.sparkutils.PomGenerator/readDepTreeFile is a function.
    readDepTreeFile(obj)

```

*matlab.sparkutils.PomGenerator.getInfoFromManifest*

```notalanguage
matlab.sparkutils.PomGenerator/getInfoFromManifest is a function.
    S = getInfoFromManifest(obj, name)

```

*matlab.sparkutils.PomGenerator.getInfoFromPomProperties*

```notalanguage
matlab.sparkutils.PomGenerator/getInfoFromPomProperties is a function.
    S = getInfoFromPomProperties(obj, name)

```

*matlab.sparkutils.PomGenerator.parseMetaInfo*

```notalanguage
  Check Manifest

```

*matlab.sparkutils.PomGenerator.parseJarFile*

```notalanguage
matlab.sparkutils.PomGenerator/parseJarFile is a function.
    S = parseJarFile(obj, J)

```

*matlab.sparkutils.PomGenerator.parseJarFiles*

```notalanguage
matlab.sparkutils.PomGenerator/parseJarFiles is a function.
    parseJarFiles(obj)

```

*matlab.sparkutils.PomGenerator.generatePomFile*

```notalanguage
matlab.sparkutils.PomGenerator/generatePomFile is a function.
    generatePomFile(obj)

```

*matlab.sparkutils.PomGenerator.setSparkVersion*

```notalanguage
  Retrieve version before actually generating classpath

```

*matlab.sparkutils.PomGenerator.getJars*

```notalanguage
matlab.sparkutils.PomGenerator/getJars is a function.
    jars = getJars(obj)

```

*matlab.sparkutils.PomGenerator.setSparkHome*

```notalanguage
matlab.sparkutils.PomGenerator/setSparkHome is a function.
    setSparkHome(obj)

```


#### matlab.sparkutils.SparkJar

```notalanguage
  SparkJar Class to help build the javaclasspath necessary for Spark

```

*matlab.sparkutils.SparkJar.build*

```notalanguage
  BUILD Build a local maven repository for the build
  This step builds a local repository for the creation of the uber jar
  On success a pom file path is returned as a character vector.
  On failure an empty character vector is returned.
 
  Parameters:
   extractLocation : Required character vector parameter that specifies
                     where the Databricks Connect download has been stored.

```

*matlab.sparkutils.SparkJar.getAdditionalJarFiles*

```notalanguage
  getAdditionalJarFiles Method to download some external Jar files
 
  What files are downloaded depends on the settings for this
  installation, found in the Config.
 
  See <a href="help matlab.sparkutils.Config">matlab.sparkutils.Config</a>

```

##### addFileProtocol

```notalanguage
  addFileProtocol Add 'file://' to local paths for Unix
 
  For Windows, this function doesn't change anything.
 
  Example:
  fn = '/my/file.csv'
  fpfn = addFileProtocol(fn)
  fpfn =
      'file:///my/file.csv'
  sn = "/tmp/another/file.parquet"
  fpsn = addFileProtocol(sn)
  fpsn = 
      "file:///tmp/another/file.parquet"

```

##### addSerializable

```notalanguage
  ADDSERIALIZABLE

```

##### assertUniformClass

```notalanguage
  ASSERTUNIFORMCLASS Assert cell array elements are of same type
 
  All elements of cell array must be of the same type
  Example:
   assertUniformClass('double', {3,4,5});
   => Will work
   assertUniformClass('double', {3,4,'hello'});
   => Will throw an error

```

##### buildMatlabSparkUtility

```notalanguage
  buildMatlabSparkUtility Start a Maven build for the MATLAB Spark Utility
 
  This function will start a Maven build of the MATLAB Spark Utility.
  To run this function, it's also necessary to run it on a system with
  Java and Maven properly configured.
 
  It relies on information from matlab.sparkutility.Config, to use the
  correct information.

```

##### buildSparkJarTask

```notalanguage
  buildSparkJarTask Builds a Spark Jar Task Jar
 
  This is a helper function for building a SparkJarTask. In its
  simplest form, it takes 1 argument, the name of the file to compile.
 
  buildResults = buildSparkJarTask('myDeployment');
 
  The return value is a struct containing information about the Jar
  built, with the name of the Jar, the output folder and the full class
  name.
 
  The function takes these optional arguments, always in name/value
  pairs.
  
  ClassName -    The name of the class to be built (without package
                 name), default value 'JarTask' 
  Package -      The Java package to put this class in, default value
                'com.mathworks.spark.example' 
  BuildFolder - The name of the output folder, default value
                'buildFolder'
     
  Please see:
  https://www.mathworks.com/help/compiler/spark/example-on-deploying-applications-to-spark-using-the-matlab-api-for-spark.html
  Returns a non empty jar file path on success

```

##### createJavaSparkConf

```notalanguage
  createJavaSparkConf Create a Java sparkConf object
 
  It takes the following, optional key/value argument pairs
 
   Master - The name of the Spark Master, e.g 'local' or
     'spark://myhost:7077'
   AppName - The name of the application
   ExecutorEnv - A containers.Map with ExecutorEnv values, where both
      keys and values are of char type.
   SparkProperties - A containers.Map with SparkProperties values,
      where both keys and values are of char type.
 
  The returned value is an instance of org.apache.spark.SparkConf, i.e.
  a Java object.

```

##### createSparkSchemaFromMatlabType

```notalanguage
  createSparkSchemaFromMatlabType Create StructType from value

```

##### dataframe2table

```notalanguage
  dataframe2table Utility function to convert a MATLAB Dataframe to Table
 
  Converts a MATLAB Spark Dataframe to a MATLAB Table
 
  This is a helper function for compiler.matlab.mlspark.Dataset/table.
  It takes an argument of type org.apache.spark.sql.Dataset and
  converts this to a MATLAB table.
 
  It can be used directly, but it's recommended to use the table method
  of the Dataset object, e.g.
 
  % spark is a spark session
  outages = spark.read.format('csv')...
       .option('header','true')...
       .option('inferSchema','true')...
       .load(addFileProtocol(which('outages.csv')));
 
  T = table(outages.limit(10));

```

##### dataset2table

```notalanguage
  dataset2table Convert a Spark Dataset to a MATLAB Table
 
  Converts a Spark Dataset to a MATLAB Table
 
  This is a helper function for compiler.matlab.mlspark.Dataset/table.
  It takes an argument of type org.apache.spark.sql.Dataset and
  converts this to a MATLAB table.
 
  This function should be used for tests, not for large tables.
 
  Column data types are automatically mapped as follows:
 
    Spark             MATLAB     Notes
    =====             ======     =====
    String            string
    Char              string     converted into a MATLAB string, not char
    Varchar           string     converted into a MATLAB string, not char
    Double            double
    Decimal           double     possible precision loss
    Float             single
    Byte              int8
    Binary            int8 array
    Short             int16
    Integer           int32
    Long              int64
    Boolean           logical
    Struct            struct
    Map               containers.Map
    WrappedArray      cell array
    Timestamp         datetime
    CalendarInterval  duration
    (any other type)  *** NOT SUPPORTED ***
 
  null values are set to either missing or NaN, depending on the data type.
  
  This function can be used directly, but it is recommended to use the
  table method of the Dataset object, e.g.
 
    % spark is a spark session
    outages = spark.read.format('csv')...
         .option('header','true')...
         .option('inferSchema','true')...
         .load(addFileProtocol(which('outages.csv')));
 
    T = table(outages.limit(10));
 
  See also: table2dataset, table2dataframe

```

##### findFileRecursively

```notalanguage
  findFileRecursively Search directories recursively for a file
 
  filesFound = findFileRecursively(startDir, rxName)
  will recursively search for a file with name 'rxName' in the
  directory 'startDir'. The 'rxName' is a regular expression.

```

##### getPersistentSparkSession

```notalanguage
  getPersistentSparkSession - Get persistent Spark session
 
  This function will return a persistent Spark session that is
  maintained by another class. This makes it easier to reuse an
  existing Spark session in different parts of an application.
 
  Example:
      spark = getPersistentSparkSession('local');
  or
      spark = getPersistentSparkSession('spark://my-cluster:7077');
 
  If no argument is given, the sparkMaster will be read from the
  current configuration.
 
  See also, matlab.sparkutils.Config

```

##### getSparkApiRoot

```notalanguage
  getSparkApiRoot Return root of Apache Spark project

```

##### getSparkEnvironmentType

```notalanguage
  getSparkEnvironmentType Get the environment type of Spark
 
  Spark can be used in either 'Apache Spark' or 'Databricks'
  environment. This function will return either "ApacheSpark" or
  "Databricks", depending on what environment is currently used.

```

##### getSparkJarsLocation

```notalanguage
  GETSPARKJARSLOCATION Function to retrieve common folder for Jars

```

##### getSparkMajorVersion

```notalanguage
  GETSPARKMAJORVERSION Retrieve Spark major version used.

    Other functions named getSparkMajorVersion

       matlab.sparkutils.Config/getSparkMajorVersion

```

##### isDatabricksEnvironment

```notalanguage
  isDatabricksEnvironment Check if this is run in Databricks context
 
  Spark can be used in either 'Apache Spark' or 'Databricks'
  environment. This function will return either true if this is a
  Databricks environment.

```

##### javaobj2array

```notalanguage
  JAVAOBJ2ARRAY Function to marshal separate Java objects into an array.
 
  All objects must be of the same type
  Example:
   % ds is a Dataset
   ja = javaobj2array(ds.col("Origin"), ds.col("Destination"));

```

##### makeJavaArray

```notalanguage
  MAKEJAVAARRAY Ensure java object is an array
 
  If a Java method expects an array of a certain object, this function
  will ensure that it is really an array, not just a scalar Java
  object.
 
  Example:
   arr = makeJavaArray(java.lang.String('hello'))
   => Will work
   assertUniformClass('double', {3,4,'hello'});
   => Will throw an error

```

##### pretty

```notalanguage
  PRETTY Function to prettify JSON using GSON

    Other functions named pretty

       sym/pretty

```

##### sparkApiPackageVersion

```notalanguage
  sparkApiPackageVersion Return version of the matlab-spark-api package

```

##### string2java

```notalanguage
  STRING2JAVA Function to marshal data from MATLAB strings to a Java String Array

```

##### stripJavaError

```notalanguage
 stripJavaError Attempt to convert a stack trace into something prettier.
  (adapted from sendmail.m)

```

##### table2dataframe

```notalanguage
  table2dataframe Function to create Spark dataset from MATLAB table
 
  This should be used for tests, not for large tables.

```

##### table2dataset

```notalanguage
  TABLE2DATASET Function to create Spark dataset from MATLAB table
 
  This is a helper function for compiler.matlab.mlspark.Dataset/table.
  It takes as arguments a MATLAB table, the spark session reference, and
  an optional schema object, and converts the table into a Dataset object.
 
  This function should be used for tests, not for large tables.
 
  To use it, at least a table and a spark session are needed:
 
    dataset = table2dataset(matlabTable, sparkSession);
 
  When the optional third input argument (schema) is not provided, the
  Column data types are automatically mapped as follows (also see the 
  createSparkSchemaFromMatlabType in the functions folder):
 
    MATLAB            Spark     Notes
    ======            ======    =====
    char              String    converting back to MATLAB results in string, not char
    string            String    <missing> value interpreted as the String \0
    double            Double
    single            Float
    int8              Byte
    int16             Short
    int32             Integer
    int64             Long
    logical           Boolean
    struct            Struct
    table             Struct    converting back to MATLAB results in struct, not table
    containers.Map    Map
    cell              WrappedArray
    datetime          Timestamp
    duration          CalendarInterval
    (any other type)  *** NOT SUPPORTED ***
 
  An optional third argument (schema) can also be specified. This is useful
  when a schema object is already available, for example the schema of a
  pre-existing Spark dataset.
 
    dataset = spark.read.format("parquet").load("/my/files")
    T = dataset2table(dataset);
    T = runAlgorithm(T);
    schema = T.schema;
    dataset = table2dataset(matlabTable, sparkSession, schema);
 
  The optional schema argument can also be specified as a cell-array of
  chars or a string array, representing case-insensitive column data types.
  Only the following basic data types are supported:
 
    string or char, double, single or float, int8 or byte, int16 or short,
    int32 or int or integer, int64 or long, logical or boolean, duration,
    datetime or timestamp.
 
  Note: this list does not include complex data types such as struct, map,
  or table. If your data contains such data types, either use the 2-inputs
  variant of this function in order to auto-generate the schema, or use a
  schema-object from a pre-existing dataset object.
 
  See also: dataset2table, table2dataframe

```

##### tail

```notalanguage
  TAIL Tail the end of the file
  Useful in inspecting the log file for DEBUG, TRACE and INFO messages.

    Other functions named tail

       codistributed/tail    gpuArray/tail    tabular/tail    tall/tail

```



------

##### Copyright 2020-2021, The MathWorks, Inc.
