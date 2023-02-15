# Installation -- MATLAB Interface *for Apache Spark*

## Spark binaries
It is not necessary to have an installation of Spark on the machine where this is
running. For certain scenarios, however, it might be helpful.

The Apache Spark installation can be downloaded from the
[official Apache Spark page](https://spark.apache.org),
and can be unpacked anywhere on the local drive.

The installation simply consists of unpacking the file into a directory.

If you do install a local Spark, add the environment variable `SPARK_HOME` defined on your machine, e.g. on Linux

```
SPARK_HOME=/local/tools/spark-2.4.7-bin-hadoop2.7
```
or on Windows
```
SPARK_HOME=C:\Tools\Spark\spark-2.4.7-bin-hadoop2.7
```

The `SPARK_HOME` variable should, of course, reflect the install location
of Apache Spark.

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

### Building additional Jar files
Running this requires, as in the previous step, a JDK >= 8 and Apache Maven installed
on the machine where this is built.

There are two Jars that need to be built,
`matlab-spark-utility-*.jar` and
`sparkbuilder-runtimequeue-*.jar`. 
The former mainly handles communication between MATLAB and the Spark context for interactive
use. The latter is needed when running a Jar compiled with MATLAB Compiler SDK
and `SparkBuilder` (available in this package).

They can both be built with the command:
```matlab
matlab.sparkutils.buildMatlabSparkAPIJars
```

If any of these Jars need to be rebuilt separately, this can be done with the commands:
```matlab
matlab.sparkutils.buildMatlabSparkUtility()
```
and

```matlab
matlab.sparkutils.buildRuntimeQueueJar()
```


[//]: #  (Copyright 2021-2023 The MathWorks, Inc.)

