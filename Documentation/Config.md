# Configuration

## Introduction
Apache Spark comes in different versions, and the environment should be
configured to use the correct version. This is important for

1. building the `matlab-spark-utility` Jar file,
2. generating the Java classpath, and
3. setting up properties to instantiate a Spark environment.

The configuration is kept in a `json` file, and contains configurations for
different versions of Spark (at the time of writing *2.4.5*, *2.4.7* and *3.0.1*, but
more can be added). In general, there should be no need to edit this file
manually, but this can be done, e.g. to add another entry for a version of spark.

## The Config class

The configuration is handled most directly through the `Config` class.

```matlab
>> C = matlab.sparkutils.Config.getInMemoryConfig
C = 
  Config with properties:

          Versions: ["2.4.5"    "2.4.7"    "3.0.1"    "3.0.1-hadoop3.2"]
    CurrentVersion: '3.0.1'
            Master: 'local'
```

As seen here, this indicates
* the available versions
* the active (currently used) version
* the default master

The output will show us what versions are available, and which is set
as the `CurrentVersion`. The `CurrentVersion` is what will be used for the tasks
listed further above.

### Changing the version
The `CurrentVersion` can easily be changed.

```matlab
>> C = matlab.sparkutils.Config()
C = 
  Config with properties:

          Versions: ["2.4.5"    "2.4.7"    "3.0.1"    "3.0.1-hadoop3.2"]
    CurrentVersion: '3.0.1'
            Master: 'local'

>> C.CurrentVersion = "2.4.7"
C = 
  Config with properties:

          Versions: ["2.4.5"    "2.4.7"    "3.0.1"    "3.0.1-hadoop3.2"]
    CurrentVersion: '3.0.1'
            Master: 'local'
```

Only the available versions can be used:
```matlab
>> C.CurrentVersion = "2.4.8"
Error using matlab.sparkutils.Config/set.CurrentVersion (line 89)
The version 2.4.8 is not part of the available versions (2.4.5 2.4.7 3.0.1 3.0.1-hadoop3.2) 
```
To make this reflect in the `json` file, the configuration must now be saved, but also refer to
the *In memory config* section below.

```matlab
C.saveConfig
```

#### Location of the saved Config file
There is a default Config file being part of this package. If a user saves the Config,
the default Config file will not be overwritten. Instead, it will be saved in the users
*MATLAB Preference Directory*, which can be found by running `prefdir` in MATLAB:

```matlab
>> prefdir
ans =
    '/home/<username>/.matlab/R2021a'
```
This enables different users to have different settings on a shared system.
It also avoids the problem of corrupting the default Configuration file by mistake.

If a user config file has been corrupted, it can be removed. It can also be overwritten
by the default config by issuing the commands:
```matlab
C = matlab.sparkutils.Config();
C.overwriteUserConfig();
```

### In memory config
There may be cases, where the user wants to change settings, but not saving them, which will
change the default settings. For this, the static method `getInMemoryConfig` is used.
This method will load the default Config and keep it in memory. Changes can be made to this config,
and they will be kept in memory, but not saved to disk.

The different functions that use the Config, e.g. 
* Generating javaclasspath.txt
* Building Spark-Utility Jar
* Instantiating Spark sessions

will all use this in-memory Config. This makes it easy to just set this at the beginning of a session,
and henceforth all functions will use this. If the memory of classes is cleared, `clear classes`,
this instance of the Config object will vanish, and the user must redo the setting changes. If only
a `clear` command is issued, the Config is still valid.

## Maven build info
The `matlab-spark-utility` Jar file, which is needed for certain operations,
must be built for the corresponding Spark version.

This is built from the command line using the command
```bash
mvn clean package
```

Without further parameters, it will build the Jar file for Spark 3.0.1.

If another version should be built, certain properties of the maven build
must be changed from the command line. This information is also contained in
the configuration file, and there is a method, `genMavenBuildCommand`,
for generating the correct maven build string.

```matlab
>> C = matlab.sparkutils.Config.getInMemoryConfig()
C = 
  Config with properties:

          Versions: ["2.4.5"    "2.4.7"    "3.0.1"    "3.0.1-hadoop3.2"]
    CurrentVersion: '3.0.1'
            Master: 'local'
>> C.genMavenBuildCommand
Run this command to build matlab-spark-utility:
	mvn -Dspark.version=2.4.7 -Dspark.major.version=2.x -Dscala.version=2.11.12 -Dscala.compat.version=2.11 clean package
```

This shows that the correct build command for Spark 2.4.7 would be
```bash
mvn -Dspark.version=2.4.7 -Dspark.major.version=2.x \
    -Dscala.version=2.11.12 -Dscala.compat.version=2.11 \
    clean package
```

## Adding support for other Spark versions
A few versions of Spark are supported directly, but more can be added.
To achieve this, new entries must be added in the JSON file containing
the save configuration.

Below is an example of one of the configurations.
```json
    {
      "name": "2.4.7",
      "maven": [
        {
          "name": "spark.version",
          "value": "2.4.7"
        },
        {
          "name": "spark.major.version",
          "value": "2.x"
        },
        {
          "name": "scala.version",
          "value": "2.11.12"
        },
        {
          "name": "scala.compat.version",
          "value": "2.11"
        },
        {
          "name": "hadoop.version",
          "value": "2.7.4"
        }
      ],
      "libs": [
        {
          "base": "delta-core",
          "jar": "delta-core_2.11-0.6.1.jar",
          "src": "https://repo1.maven.org/maven2/io/delta/delta-core_2.11/0.6.1/delta-core_2.11-0.6.1.jar"
        },
        {
          "base": "spark-avro",
          "jar": "spark-avro_2.11-2.4.7.jar",
          "src": "https://repo1.maven.org/maven2/org/apache/spark/spark-avro_2.11/2.4.7/spark-avro_2.11-2.4.7.jar"
        }
      ]
    },
```

As can be seen, it will require information about 
* The Spark version
* The Scala version
* The Hadoop version
* Links to *delta-core* and *spark-avro* Jars

These versions and links, as seen when inspecting the JSON file, change for different
versions.

To open the Configuration file in the MATLAB editor, do the following:
```matlab
>> C = matlab.sparkutils.Config.getInMemoryConfig;
>> C.editConfig
```

[//]: #  (Copyright 2021 The MathWorks, Inc.)
