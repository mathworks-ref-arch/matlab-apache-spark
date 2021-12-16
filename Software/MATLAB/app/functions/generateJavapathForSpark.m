function generateJavapathForSpark(verStr)
    % generateJavapathForSpark Create a javaclasspath.txt file
    %
    % This file will create a javaclasspath.txt in the folder
    % <spark-package>/Software/MATLAB/javaclasspath.txt
    % It will contain the Jar files necessary to run the
    % matlab-apache-spark package.
    %
    % The Jar entries here must be on MATLABs static classpath, i.e.
    % this file must be read during MATLAB startup. There are two ways to
    % achieve this:
    %   1. Start MATLAB from the same folder where this file
    %      resides, or
    %   2. Move the javaclasspath.txt to the MATLAB preferences dir (found
    %      with the command prefdir).
    %
    % For more details see:
    %   https://www.mathworks.com/help/matlab/matlab_external/static-path-of-java-class-path.html

    % Copyright 2021 MathWorks, Inc.

    if nargin == 0
        SJ = matlab.sparkutils.SparkJar();
    else
        SJ = matlab.sparkutils.SparkJar(verStr);
    end
    SJ.build();

end
