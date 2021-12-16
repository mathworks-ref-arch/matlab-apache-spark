# Basic usage -- MATLAB Interface *for Apache Spark*


## Interactive Spark operations
First, create a Spark session
```matlab

% A second argument can be used for choosing a spark cluster. This example uses
% a local (in process) Spark.
spark = getDefaultSparkSession('my-spark-app')
```
Create a dataset in Spark
```matlab
flightsCSV = which('airlinesmall.csv');
flights = spark.read.format("csv") ...
    .option("header", "true") ...
    .option("inferSchema", "true") ...
    .load(addFileProtocol(flightsCSV));
```

Check how man rows are in this dataset
```matlab
>> fprintf("Number of flights: #%d\n", flights.count)
Number of flights: #123523
```

Change some datatypes from text to int in the dataset
```matlab
cleanFlights = flights ...
    .withColumn('ArrDelay', flights.col('ArrDelay').cast('int')) ...
    .withColumn('DepDelay', flights.col('DepDelay').cast('int'));```
```

Do a `groupBy` of how many flights leave a certain airport at a certain day of week,
then sort the results, first ascending, then descending.
```matlab
% How many flights leave a certain origin on a certain day of week?
>> dow=cleanFlights.groupBy('Origin', 'DayOfWeek').count();
>> dow.show(5)
+------+---------+-----+
|Origin|DayOfWeek|count|
+------+---------+-----+
|   CLT|        4|  378|
|   BNA|        6|  154|
|   CLE|        5|  224|
|   MSY|        2|  141|
|   TPA|        3|  196|
+------+---------+-----+
only showing top 5 rows

% And if we sort them?
>> dow.sort("count").show(5)
+------+---------+-----+
|Origin|DayOfWeek|count|
+------+---------+-----+
|   LRD|        2|    1|
|   DLG|        2|    1|
|   SMX|        1|    1|
|   RDM|        2|    1|
|   CHO|        2|    1|
+------+---------+-----+
only showing top 5 rows

% The default sort is ascending, but if we want to see the descending 
% order, we have to get more precise. We have to provide a column object,
% and set it to be descending in order.
>> dow.sort(dow.col("count").desc()).show(10)
+------+---------+-----+
|Origin|DayOfWeek|count|
+------+---------+-----+
|   ORD|        2| 1011|
|   ORD|        4|  988|
|   ORD|        3|  968|
|   ORD|        1|  942|
|   ORD|        7|  929|
|   ORD|        5|  927|
|   ATL|        1|  914|
|   ORD|        6|  908|
|   ATL|        2|  901|
|   ATL|        5|  899|
+------+---------+-----+
only showing top 10 rows
```

Use a SQL statement to filter the flights, and plot some data on delays
```matlab
AAflights = cleanFlights.filter("UniqueCarrier LIKE 'AA' AND DayOfWeek = 3") ...
    .select('ArrDelay', 'DepDelay');
AAflights.count()

AAT = table(AAflights);
plot([AAT.ArrDelay, AAT.DepDelay]); shg;
title("Arrival and Depature delay for Wednesday AA Flights");
legend("Arrival", "Departure");

ylabel("Delay");
xlabel("Flights");
```

## Compiling for use in Spark workflows

This package can also be used to compile MATLAB functions into Java code and
run them in a Spark workflow.

> **Note:** This example requires the products **MATLAB Compiler** and
> **MATLAB Compiler SDK**, in order to compile MATLAB code into a Java library.
> Optionally, a local Spark installation can be helpful for testing.

### Building
This functionality relies on the `SparkBuilder`, which is described in detail
here
`../Software/MATLAB/sys/modules/matlab-spark-api/Documentation/SparkBuilder.md`.

This example relies on a very simple function with two input arguments
and two output arguments, both of types `string` and `int64`.

The example files can be found in this location in the package:
`Software/MATLAB/public/examples/sparkbuilder`

In MATLAB, `cd` to this directory, and run the file `build_sb_jar.m`.

This will invoke the MATLAB Compiler (`mcc`), and then generate additional
Java files with wrapper methods for use in Spark.

When this process is done, a Jar-file has been created. In this example,
it's found in
`outFolder/example1_R2021b_Spark3.x_glnxa64.jar`.

The name will be the same as `mcc` would create `example1.jar`, but with
some additionaal information pertaining to
* MATLAB release used
* Spark version it's compiled for
* Platform where it was compiled

As a Jar-file created by MATLAB needs the
[MATLAB Runtime](https://uk.mathworks.com/products/compiler/matlab-runtime.html),
having the MATLAB Release be part of the name can be helpful. 

The same argument holds for the Spark version.

The platform where this was compiled is a different matter. In general,
a Jar-file compiled with MATLAB Compiler on one platform is compatible with
other platforms supported by MATLAB. The exceptions to this rule are when:
* The MATLAB code invokes Simulink. The output from Simulink Compiler is
  platform dependent, so in this case it must be compiled on the same platform
  where it runs.
* The MATLAB code contains platform dependent code, e.g. mex-files.

### Testing locally
If a local Spark installation is available, the code can be tested locally.
The environment variable `SPARK_HOME` must also be set to point to this
installation.

This also requires that a MATLAB Runtime is installed locally on the computer,
and setup correctly (see the [MATLAB Runtime help](https://uk.mathworks.com/help/compiler/matlab-runtime.html)).

In the output folder of the compilation, a shell script is generated, that can
help with some simple testing.
(In this example here: `./outFolder/runSparkShell.sh`)

This is currently only supported on Linux, with
the prerequisite that `bash` is installed, and also the tool `xclip`.

Run the script like this:
```bash
./outFolder/runSparkShell.sh
```
This will start a local Spark session. The script also copies some code into
the clipboard, that helps with some initial setup. The code looks like this
for this example:
```scala
import com.mathworks.toolbox.javabuilder._
import com.example.example1.MyClassWrapper
MyClassWrapper.initEncoders(spark)
val DS = spark.range(1, 5000)
val DD1 = DS.toDF.withColumnRenamed("id", "col_long")
val DD2 = DD1.withColumn("col_string1", lit("abcxzy")).withColumn("col_string2", DD1.col("col_long").cast("string"))
val DD3 = DD2.withColumn("col_int", DD2.col("col_long").cast("int"))
val DD4 = DD3.withColumn("col_short", DD3.col("col_int").cast("short"))
val DD5 = DD4.withColumn("col_bool1", DD4.col("col_long") % 2 === 0)
val DD6 = DD5.withColumn("col_bool2", DD5.col("col_long") % 3 === 0)
val DD7 = DD6.withColumn("col_double", DD6.col("col_long").cast("double"))
DD7.printSchema
DD7.show(10, false)
```

In the Spark shell, this code can be executed by simple *pasting it in*.

We now have a sample dataset that we can use to test our function.
The `simpleOne` function took two arguments, a `string` and an `int64`,
so we can create a Dataset with these two datatypes, and use our function
in a `map` method on the dataset.

```scala
val DD8 = DD7
    .select("col_string1", "col_long")
    .map(
        MyClassWrapper.simpleOne(), 
        MyClassWrapper.simpleOne_encoder)
```
We can see that it has the expected schema
```scala
DD8.printSchema
root
 |-- _1: string (nullable = true)
 |-- _2: long (nullable = true)
```

If we try to perform some actions, we can see the content.

```scala
DD8.show(10, false)
+--------+---+                                                                  
|_1      |_2 |
+--------+---+
|abcxzy1 |7  |
|abcxzy2 |8  |
|abcxzy3 |9  |
|abcxzy4 |10 |
|abcxzy5 |11 |
|abcxzy6 |12 |
|abcxzy7 |13 |
|abcxzy8 |14 |
|abcxzy9 |15 |
|abcxzy10|16 |
+--------+---+
only showing top 10 rows
```

[//]: #  (Copyright 2021 The MathWorks, Inc.)












