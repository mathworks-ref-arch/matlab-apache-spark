function jarFolder = getSparkJarsLocation( varargin )
    % GETSPARKJARSLOCATION Function to retrieve common folder for Jars
    %
    
    % Copyright 2020 MathWorks, Inc.

    persistent FOLDER
    if isempty(FOLDER)
        col = org.apache.spark.sql.Column('SillyColumn');
        jarLocation = col.getClass().getProtectionDomain().getCodeSource().getLocation().getPath();
        FOLDER = fileparts(char(jarLocation));
    end
    jarFolder = FOLDER;
    
end
