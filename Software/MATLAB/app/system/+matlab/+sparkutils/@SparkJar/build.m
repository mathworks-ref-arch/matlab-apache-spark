function build(obj)
    % BUILD Build a local maven repository for the build
    % This step builds a local repository for the creation of the uber jar
    % On success a pom file path is returned as a character vector.
    % On failure an empty character vector is returned.
    %
    % Parameters:
    %  extractLocation : Required character vector parameter that specifies
    %                    where the Databricks Connect download has been stored.
    
    % Copyright 2020 The MathWorks, Inc.
       
    % Initialization
    disp('Building local javaclasspath.txt');
        
    % Retrieve the delta-core, etc files
    getAdditionalJarFiles(obj)
    
    addExtraJarsToClasspath(obj);
    
    
    classpathFile = generateNewJavaclasspath(obj);
    ccp = sprintf('copyfile(''%s'', prefdir)', classpathFile);
    fprintf(['### <a href="matlab:%s">Copy newly created javaclasspath.txt to your preferences.</a> ', ...
        'This may remove an existing file.\n'], ccp);
    
end %function

function classpathFile = generateNewJavaclasspath(obj)
    
    classpathFile = getSparkRoot('javaclasspath.txt');
    fh = fopen(classpathFile, 'w');
    if fh < 0
        error('SPARK:ERROR', 'Couldn''t open %s for writing.\n', classpathFile);
    end
    closeAfter = onCleanup(@() fclose(fh));
    fprintf(fh, '<before>\n');
    fprintf(fh, '%s\n', getSparkApiRoot('lib', 'log'));
    fprintf(fh, '%s\n', obj.Jars{:});
        
end

function addExtraJarsToClasspath(obj)
    % addExtraJarsToClasspath Add local jar files to classpath
        

    jarDir = getSparkApiRoot('lib', 'jar');
    
    CE = obj.Config.getCurrentEntry();

    matlabJar = matlab.sparkutils.getMatlabSparkUtilityFullName();
    
    sparkLibs = CE.libs;

    jars = cellfun(@(x) string(fullfile(jarDir, x)), {sparkLibs.jar})';
    jars(end+1) = fullfile(jarDir, matlabJar);
    
    obj.Jars = [obj.Jars(:); jars(:)];
        
end

