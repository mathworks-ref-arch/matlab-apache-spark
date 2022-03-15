#  MATLAB Interface *for Apache Spark* - Release Notes

## 0.1.16 (7th Mar 2022)
* matlab-spark-api
  * Implement more `sql.functions` methods

## 0.1.15 (9th Feb 2022)
* Add support for Spark 3.2.1
* Fixed Java build for newest MATLAB release (shading certain packages)
* Removed spark-avro Jar for Spark 2.2.0 (no longer available at repositories)

## 0.1.14 (16th Dec 2021)
* Minor, cosmetic fixes

## 0.1.13 (15th Dec 2021)
* Update SparkAPI generated documentation

## 0.1.12 (15th Dec 2021)
* Minor changes to spark-api, version 0.1.16

## 0.1.11 (14th Dec 2021)
* Documentation updates
* Added 3.1.1 configuration of Spark
* Several methods on Dataset object added
* Fixed bug with mapPartion Table generation
* Improved documentation
* SparkBuilder improvements
* Add several methods from `org.apache.spark.sql.functions`

## 0.1.10 (8th June 2021)
* Added initial Spark UI REST API support
* Add drop method to Dataset
* Improve UDF/map SparkBuilder
* Update SparkUtility, 0.2.8., with methods for creating Encoders

## 0.1.9 (8th June 2021)
* Add arithmetic, relational and boolean operators on Column object.
  This also includes overloading of corresponding MATLAB operators.
* Initial release of SparkBuilder for maps and UDFs.

## 0.1.8 (1st April 2021)
* Documentation updates

## 0.1.7 (31st March 2021)
* Updates in spark-api

## 0.1.6 (14th March 2021)
* More methods in spark-api
* Shading of Jar-file
* Use in-memory config for all helper functions
## 0.1.5 (4th March 2021)
* Add dependencies for OSX
* Add more methods and tests to dataset
* Improvements to matlab-spark-utility
* Improvements to install/javaclasspath

## 0.1.4 (20th January 2021)
* Reorg of repository with matlab-spark-api submodule.

## 0.1.3 (14th January 2021)
* Tests working for plain Spark as well as Databricks
* Improved data marshalling between MATLAB and Spark
* Add support for Maps and Structures converting from datasets to MATLAB tables.
* Add support for Spark 3 (3.0.1).
* Add Config functionality to handle different Spark versions.

## 0.1.2 (24th November 2020)
* Add support for windowed columns in table conversion.
* Add several methods from `org.apache.spark.sql.functions`

## 0.1.1 (24th November 2020)
* Add support for struct arrays and wrapped arrays in table conversion.
* Add several methods from `org.apache.spark.sql.functions`

## 0.1.0 (18th November 2020)
* First customer release

