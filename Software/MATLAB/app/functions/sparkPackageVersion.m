function V = sparkPackageVersion()
    % sparkPackageVersion Return version of the matlab-apache-spark package
    
    % Copyright 2021 MathWorks, Inc.
   
    r = fileparts(fileparts(sparkPackageRoot));
    verFile = fullfile(r, 'VERSION');
    V = strip(string(fileread(verFile)));
    
end
