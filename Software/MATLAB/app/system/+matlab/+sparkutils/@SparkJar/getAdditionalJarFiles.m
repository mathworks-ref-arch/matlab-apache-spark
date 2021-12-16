function getAdditionalJarFiles(obj)
    % getAdditionalJarFiles Method to download some external Jar files
    %
    % What files are downloaded depends on the settings for this
    % installation, found in the Config.
    %
    % See <a href="help matlab.sparkutils.Config">matlab.sparkutils.Config</a>
    
    % Copyright, MathWorks, 2020
    
    jarDir = getSparkApiRoot('lib', 'jar');
    if ~exist(jarDir, 'dir')
        mkdir(jarDir);
    end
    
    sparkLibs = obj.Config.getLibraries();
    
    webOpts = weboptions;
    webOpts.Timeout = 30;
    
    for k=1:length(sparkLibs)
        Lib = sparkLibs(k);
        
        libTgt = fullfile(jarDir, Lib.jar);
        
        if ~exist(libTgt, 'file')
            fprintf('Downloading %s from %s.\n', Lib.jar, Lib.src);
            
            websave(libTgt, Lib.src);
        else
            fprintf('Library %s already present.\n', Lib.jar);
        end
    end
end
