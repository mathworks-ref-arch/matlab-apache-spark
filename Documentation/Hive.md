# Connecting to a Hive enabled Spark cluster
## Introduction

Apache Hive™ is often used together with Apache Spark, and
this package can also be used with this combination.

The configuration to make this work, though, is more complicated
than plain Spark, and no generic solution is provided. This section
contains examples on how this was used on our testing system, whichh
may serve as a starting point for users.

The best way to achieve this may be to speak with the people that
set up the Hive/Spark system to be used.

## Java classpath
To make this work, some configuration files need to be present on the
java classpath. In our setup, we change the `javaclasspath.txt` from

```
<before>
/somewhere/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/log
/somewhere/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/matlab-spark-utility-shaded_2.2.0-0.2.9.jar
```

into

```
<before>
/somewhere/Software/MATLAB/hadoop_conf
/somewhere/Software/MATLAB/hive_conf
/somewhere/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/log
/somewhere/Software/MATLAB/sys/modules/matlab-spark-api/Software/MATLAB/lib/jar/matlab-spark-utility-shaded_2.2.0-0.2.9.jar
```

> **Note:** When making any changes to the static Java classpath like this,
> MATLAB must be restarted for the changes to take effect.

## Configuration directories
We added the two directories `hadoop_conf` and `hive_conf` to the file. The
content of these folders will vary between installations, and our configurations
are not part of this distribution.

The contents of the folders in our case was as follows:

```
❯ ls -1 *_conf
hadoop_conf:
capacity-scheduler.xml
core-site.xml
hadoop-policy.xml
hdfs-site.xml
httpfs-site.xml
kms-acls.xml
kms-site.xml
mapred-site.xml
yarn-site.xml

hive_conf:
hive-site.xml
```

### hadoop_conf
For the `hadoop_conf`, these were  all the `xml`-files found on our servers,
in the folder pointed to by the environment variable `HADOOP_CONF_DIR`.

### hive_conf
For the `hive-site.xml` file it was not the file found
in the Hive installation (which is very long, with many details). In our case,
it was found in the Spark installation.

This configuration only contained one single entry, the property 
`hive.metastore.uris`.

## Retrieving a Spark session
In order to retrieve a Spark session, use the function `getHiveSparkSession`.

```matlab
spark = getHiveSparkSession('appName', 'spark://my-server:7077')
```

This function is very much like `getDefaultSparkSession`, but instead of
relying on `getDefaultSparkProperties`, it uses `getDefaultHiveProperties`.

The file `getDefaultHiveProperties` contains some settings that were necessary
in our setup, to connect correctly with the Hive enabled Spark cluster.
The exact settings may differ, but in our case, the changes related to the
following properties:
* `spark.sql.hive.metastore.jars`
* `spark.sql.warehouse.dir`
* `spark.sql.catalogImplementation`

In order to adapt this for another environment, let say the **XYZ cluster**,
it may be useful to create separate functions, i.e.:
* `getHiveSparkSession` => `getXYZSparkSession`
* `getDefaultHiveProperties` => `getXYZHiveProperties`

Then change the `getXYZSparkSession` to use `getXYZHiveProperties` instead of `getDefaultHiveProperties`, and then adapt these files to correctly connect
to the **XYZ cluster**.

[//]: #  (Copyright 2021 The MathWorks, Inc.)