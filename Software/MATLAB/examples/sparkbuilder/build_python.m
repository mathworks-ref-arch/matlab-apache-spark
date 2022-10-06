% A simple script that uses the PythonSparkBuilder to build a Spark-compatible
% Wheel-file of MATLAB code.

% Copyright 2022 MathWorks, Inc.

% Create signature file for simpleOne
% This only has to be rebuilt if the function signature changes, that is if
% input arguments or return values change number, name or type.
% compiler.build.spark.types.generateFunctionSignature("simpleOne", {"Hello", int64(5)});

% First define the options needed for the build
opts = compiler.build.PythonPackageOptions(...
    "simpleOne.m", ...
    "OutputDir", "pythonOutput", ...
    "PackageName", "demo.simple");

% Now instantiate the PythonSparkBuilder with these options
PSB = compiler.build.spark.pythonPackage(opts);

% Now build the Wheel-file
PSB.build();

