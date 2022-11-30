% A simple script that uses the SparkBuilder to build a Spark-compatible
% Jar-file of MATLAB code.

% Copyright 2021-2022 MathWorks, Inc.

% First instantiate the SparkBuilder with an outFolder and a package name. 
SB = compiler.build.spark.SparkBuilder('javaOutput', 'com.example.example1');

% A Java class must be specified for the functions
JC = compiler.build.spark.JavaClass('MyClass');

% Create signature file for simpleOne
% This only has to be rebuilt if the function signature changes, that is if
% input arguments or return values change number, name or type.
% compiler.build.spark.types.generateFunctionSignature("simpleOne", {"Hello", int64(5)});
% compiler.build.spark.types.generateFunctionSignature("manyOut", {pi, 3.14});

% Add the MATLAB function to the Java class
JC.addBuildFile("simpleOne")
JC.addBuildFile("manyOut")

% Add the Javaclass(es) to the SparkBuilder object
SB.addClass(JC);

% Now build the Jar-file
SB.Verbose = true;
SB.build();

