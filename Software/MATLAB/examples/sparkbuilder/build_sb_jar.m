% A simple script that uses the SparkBuilder to build a Spark-compatible
% Jar-file of MATLAB code.

% Copyright 2021 MathWorks, Inc.

% First instantiate the SparkBuilder with an outFolder and a package name. 
SB = compiler.build.spark.SparkBuilder('outFolder', 'com.example.example1');

% A Java class must be specified for the functions
JC = compiler.build.spark.JavaClass('MyClass');

% Now, we define file with specified interfaces
soFile = compiler.build.spark.File( ...
    "simpleOne", ... The name of the function
    ["string", "int64"], ... Input arguments
    ["string", "int64"] ... Output arguments
    );

% Add the file(s) to the Javaclass(es)
JC.addBuildFile(soFile);

% Add the Javaclass(es) to the SparkBuilder object
SB.addClass(JC);

% Now build the Jar-file
SB.build();

