# MATLAB Interface *for Apache Spark*

Apache Spark™ is a unified analytics engine for large-scale data processing.

## Requirements
### MathWorks Products (https://www.mathworks.com)
Requires MATLAB release R2019a or later.
* MATLAB
* (optional) MATLAB Parallel Server
* (optional) MATLAB Compiler
* (optional) MATLAB Compiler SDK

### 3rd Party Products

* JDK 8+
* Apache Maven™ 3.6.3

## Introduction

This package enables connecting to a local or a remote Apache Spark cluster,
to read and write data, and perform certain Spark operations on this data.
It is not an alternative to the existing workflows for Compiling MATLAB code into
Spark Jars, but a way of interacting with a cluster and its data, and preparing
algorithms for the Jar workflows.

## Installation

### Clone this repository recursively

```
 git clone --recursive git@github.com:mathworks-ref-arch/matlab-apache-spark.git
```
> **Note:** If you're reading this from a downloaded package,
> you don't need to clone anything.

### Build MATLAB Spark Utility

To build the MATLAB Spark Utility, both a Java 1.8 SDK and Apache Maven are needed.

The easiest way to build it is by starting MATLAB and building it from there.
Depending on the Spark version used, Maven must be called with different arguments.

In MATLAB, run the file `Software/MATLAB/startup.m` (in this repository/package).
This can be done each time, or if this package should always be on the path, it can
be persisted with the command `savepath`.

This package can be used with different Spark versions, so make sure the correct one is
configured.

```matlab
>> C = matlab.sparkutils.Config.getInMemoryConfig()
C = 
  Config with properties:

          Versions: ["2.2.0"    "2.4.5"    "2.4.7"    "3.0.1"    "3.0.1-hadoop3.2"    "3.1.2"]
    CurrentVersion: '3.0.1'
            Master: 'local'

>> C.CurrentVersion = "3.1.2"
C = 
  Config with properties:

          Versions: ["2.2.0"    "2.4.5"    "2.4.7"    "3.0.1"    "3.0.1-hadoop3.2"    "3.1.2"]
    CurrentVersion: "3.1.2"
            Master: 'local'

>> C.saveConfig  % Save the configuration
```

The installation also needs a Jar file, `matlab-spark-utility`, which can now be built.
This requires a **JDK 8+** and **Maven 3.6.3** installed on the computer.
Simply run
```matlab
buildMatlabSparkUtility
```

It will pick up the correct versions of different files from the configuration set
in the previous step.

Refer to the `Config` object for more information, see [Config](Documentation/Config.md).

The package also needs the newly created Jar file (and some additional downloaded ones)
on the *static java classpath*. To achieve this, generate the javaclasspath.txt file.

```matlab
generateJavapathForSpark()
```

This will create a file `javaclasspath.txt` in the folder `Software/MATLAB`.
To make MATLAB use the entries in these file, either
1. Copy it to your MATLAB preference directory (can be found in MATLAB through `prefdir`), or
2. Start MATLAB from the same directory where this file is located. If MATLAB is started
from the `Software/MATLAB` directory, it will automatically set all MATLAB paths,
and furthermore add the Jars in `javaclasspath.txt` to the static Java classpath.

For option 1, there will also be a hyperlink in the output of the command above.

**Note** Please note that the hyperlink will copy it to the preference directory, thereby
overwriting any existing file with the same name there.

To use the package, MATLAB must be restarted. The reason for this is that the Java classes
need to be on the *MATLAB Static Java Classpath*.

## Usage

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

Please see the [documentation](Documentation/README.md) for more information.

## License

The license for the MATLAB Interface *for Apache Spark* is available in the LICENSE.md file in this GitHub repository.
This package uses certain third-party content which is licensed under separate license agreements.
See the pom.xml file for third-party software downloaded at build time.

## Enhancement Requests

Provide suggestions for additional features or capabilities using the following link:
https://www.mathworks.com/products/reference-architectures/request-new-reference-architectures.html

## Support

Email: mwlab@mathworks.com

[//]: #  (Copyright 2021 The MathWorks, Inc.)
