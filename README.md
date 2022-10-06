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
MATLAB ships with two workflows involving Apache Spark, 
[Deploy Applications Using the MATLAB API for Spark](https://www.mathworks.com/help/releases/R2022a/compiler/deploy-applications-using-the-matlab-api-for-spark.html)
and
[Deploy Tall Arrays to a Spark Enabled Hadoop Cluster](https://www.mathworks.com/help/releases/R2022a/compiler/deploy-tall-arrays-to-a-spark-enabled-hadoop-cluster.html).

This package provides some different workflows for using MATLAB and Spark together.
* Using interactive Spark sessions to read, write and operate on Data on a Spark cluster.
* Using the MATLAB Compiler SDK to compile MATLAB code into a form that can be used in
Spark Dataset methods (map, filter, etc.). This can be used both with Java and Python.

## Installation

### Clone this repository recursively

```
 git clone --recursive git@github.com:mathworks-ref-arch/matlab-apache-spark.git
```
> **Note:** If you're reading this from a downloaded package,
> you don't need to clone anything.

### Build MATLAB Spark Utility

Before the package can be used, some Jar files must be built.

Please refer to the [Installation section](Documentation/Installation.md) for this.

## Usage

### Interactive Spark
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

Check how many rows are in this dataset
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

Use a SQL statement to filter the flights, convert the data to a MATLAB table,
and plot some data on delays
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

### Compiling code to Java or Python


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

[//]: #  (Copyright 2021-2022 The MathWorks, Inc.)
