classdef SparkJar < handle
    % SparkJar Class to help build the javaclasspath necessary for Spark
    
    % Copyright 2020 The MathWorks, Inc.
    
    properties
        Jars
        Config
    end
    properties (Dependent = true)
       Version 
    end
    
    methods
        function obj = SparkJar(configVersion)
            obj.Config = matlab.sparkutils.Config.getInMemoryConfig();
            if nargin > 0
                obj.Config.CurrentVersion = configVersion;
            end
        end
        
        function str = get.Version(obj)
           str = obj.Config.CurrentVersion; 
        end
    end
    
end