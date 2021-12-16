classdef PomGenerator < handle
    % Class to handle Spark Pom-file generation
    %
    
    % Copyright 2020 The MathWorks, Inc.
    
    properties (Hidden = true)
        Config
    end
    properties (SetAccess = private)
        SparkHome
        SparkVersion
        Table
        Deps
        DepStruct
    end
    properties (Dependent = true, SetAccess = private)
        CurrentVersion
    end
    
    methods
        function obj = PomGenerator(sparkHome)
            obj.Config = matlab.sparkutils.Config();
            if nargin > 0
                if ~exist(sparkHome, 'dir')
                    error('Spark:ERROR', '"%s" is not a (Spark) directory\n', sparkVersion);
                end
                obj.SparkHome = sparkHome;
            else
                obj.setSparkHome();
            end
            obj.setSparkVersion();
        end
        
        
        function generatePomFile(obj)
            obj.readDepTreeFile();
            T = obj.Table;
            % Tjars = struct2table(obj.getJarList());
            jars = obj.getJarList();
            Tpom = unique(T(:,["artifact", "version"]));
            jars2 = Tpom.artifact + "-" + Tpom.version;
            pi
        end
        
        function parseJarFiles(obj)
            jars = obj.getJars();
            tmpDir = getSparkRoot('tmp', sprintf('jars-%s', obj.SparkVersion));
            old = cd(tmpDir);
            goBack = onCleanup(@() cd(old));
            if ~exist(tmpDir, 'dir')
                mkdir(tmpDir);
            end
            obj.DepStruct = struct("groupId", {}, "artifactId", {}, "version", {});
            for k=1:length(jars)
                J = jars(k);
                S = obj.parseJarFile(J);
                obj.DepStruct(k) = S;
            end
            obj.Deps = struct2table(obj.DepStruct);
        end
        
        function S = parseJarFile(obj, J)
            folder = fullfile(pwd, J.name);
            if ~exist(folder, 'dir')
                mkdir(folder);
                old = cd(folder);
                goBack = onCleanup(@() cd(old));
                JFN = fullfile(J.folder, J.name);
                unZipCmd = sprintf('jar -x -f %s META-INF', JFN);
                [r,s] = system(unZipCmd);
                if r~=0
                    error("Spark:Error", "Couldn't unzip Jar file");
                end
            else
                old = cd(folder);
                goBack = onCleanup(@() cd(old));
            end
            S = parseMetaInfo(obj, string(J.name));
            
        end
        
        function S = parseMetaInfo(obj, name)
            % Check Manifest
            S = getInfoFromManifest(obj, name);
            if ~isempty(S)
                return;
            end
            
            % If that didn't work, check the pom properties
            S = getInfoFromPomProperties(obj, name);
            if ~isempty(S)
                return;
            end
            
            % Special cases, where information not easily found
            [artifactId, version] = splitJarName(name);
            switch artifactId
                case "activation"
                    groupId = "javax.activation";
                case "aopalliance"
                    groupId = "aopalliance";
                case "arpack_combined_all"
                    groupId = "org.netlib";
                case "automaton"
                    groupId = "dk.brics.automaton";
                case "javax.inject"
                    groupId = "javax.inject";
                case "jaxb-api"
                    groupId = "javax.xml.bind";
                case "jsr305"
                    groupId = "com.google.code.findbugs";
                case "jta"
                    groupId = "javax.transaction";
                case "libfb303"
                        groupId = "org.apache.thrift";
                case "oro"
                    groupId = "oro";
                case "stax-api"
                    groupId = "javax.xml.stream";
                case "transaction-api"
                    groupId = "javax.transaction";
                case "xercesImpl"
                    groupId = "xerces";
                case "xml-apis"
                    groupId = "xml-apis";
                case "xmlenc"
                    groupId = "xmlenc";
                otherwise
                    error("Spark:Error", "Couldn't deduce maven info for %s", name);

%                     artifactId
%                     groupId = "<UNKNOWN>";
            end
            
            S = struct("groupId", groupId, "artifactId", artifactId, "version", version);
            
            
        end
        
        function S = getInfoFromPomProperties(obj, name)
            S = [];
            fn = findFileRecursively(pwd, 'pom.properties');
            if isempty(fn)
                return;
            end
            if length(fn) ~= 1
                base = getBaseName(name);
                idx = find(fn.extractAfter(pwd).contains(base));
                if length(idx)==1
                    % Found one single entry
                    fn = fn(idx);
                else
                    error("Spark:Error", "Couldn't find correct directory");
                end
            end
            str = fileread(fn);
            
            version = getToken(str, 'version=');
            if isempty(version)
                return;
            end
            
            groupId = getToken(str, 'groupId=');
            if isempty(groupId)
                return;
            end
            
            artifactId = getToken(str, 'artifactId=');
            if isempty(artifactId)
                return;
            end
            
            S = struct("groupId", groupId, "artifactId", artifactId, "version", version);
            
        end
        
        function S = getInfoFromManifest(obj, name)
            fn = fullfile(pwd, 'META-INF', 'MANIFEST.MF');
            S=[];
            
            if ~exist(fn, 'file')
                return
            end
            str = fileread(fn);
            
            % First check for the Bundle-* entries
            fullname = getToken(str, 'Bundle-SymbolicName:');
            if ~isempty(fullname)
                version = getToken(str, 'Bundle-Version:');
                if ~isempty(version)
                    parts = fullname.split(".");
                    groupId = parts(1:end-1).join(".");
                    artifactId = parts(end);
                    S = struct("groupId", groupId, "artifactId", artifactId, "version", version);
                end
            else
                % Try the Implementation-Vendor-Id:
                groupId = getToken(str, 'Implementation-Vendor-Id:');
                if ~isempty(groupId)
                    [artifactId, version] = splitJarName(name);
                    S = struct("groupId", groupId, "artifactId", artifactId, "version", version);
                end
            end
        end
        
        function readDepTreeFile(obj)
            fn = getSparkApiRoot('config', sprintf('spark-%s-dep-tree.txt', obj.SparkVersion));
            if ~exist(fn, 'file')
                error('Spark:ERROR', 'No dependency file found for version %s\n', obj.SparkVersion);
            end
            S = fileread(fn);
            depLine = regexptranslate('escape', ...
                "[INFO] --- maven-dependency-plugin:");
            entryLine = ...
                regexptranslate('escape', "[INFO]") + ... The INFO preamble
                "[ |+-\\]+" + ... hierarchy help
                "([a-zA-Z:0-9.]+)" ... the name
                ;
            plainInfo = ...
                regexptranslate('escape', "[INFO]") + ... The INFO preamble
                "[ ]+\r?\n" ... White space
                ;
            matches = regexp(S, depLine);
            plainIndices = regexp(S, plainInfo);
            obj.Table = [];
            
            for k=1:length(matches)
                curIdx = matches(k);
                plainIndices(plainIndices<curIdx) = [];
                endIdx = plainIndices(1) - 1;
                curDepString = S(curIdx:endIdx);
                lines = strread(curDepString, '%s', 'delimiter', '\n');
                dep = matlab.sparkutils.PomDep(lines);
                if isempty(obj.Table)
                    obj.Table = struct2table(dep.Deps);
                else
                    obj.Table = [obj.Table; struct2table(dep.Deps)];
                end
            end
        end
        
        function jars = getJarList(obj)
            dJars = dir(fullfile(obj.SparkHome, 'jars', '*.jar'));
            jars = string({dJars.name}).replace(".jar", "");
            %            rx = "(?<artifact>[a-zA-Z0-9_.-]+?)(?<sep>[_-])(?<version>[0-9][0-9a-zA-Z._-]*)\.jar";
            %            jars = struct('artifact', {}, 'sep', {}, 'version', {});
            %            for k=1:length(dJars)
            %               names = regexp(dJars(k).name, rx, 'names', 'once');
            %               jars(k) = names;
            %            end
        end
    end
    
    methods (Hidden = true, Access=private)
        
        function setSparkHome(obj)
            sparkHome = getenv('SPARK_HOME');
            if isempty(sparkHome)
                error('SPARK:ERROR', ...
                    ['No environment variable SPARK_HOME set, ', ...
                    'and no argument given to constructor\n']);
            end
            obj.SparkHome = sparkHome;
        end
        
        
        function jars = getJars(obj)
            jars = dir(fullfile(obj.SparkHome, 'jars', '*.jar'));
        end
        
        function setSparkVersion(obj)
            % Retrieve version before actually generating classpath
            if ~isempty(obj.SparkVersion)
                return;
            end
            [~, sparkEnd] = fileparts(obj.SparkHome);
            tok = regexp(sparkEnd, 'spark-([^-]+)-', 'tokens', 'once');
            
            % TODO: Consider bringing this in too.
            %             if isempty(tok)
            %                 % Fall back to calling Spark Shell and extract version
            %                 tok = obj.getSystemSparkVersion();
            %             end
            
            if isempty(tok)
                error('Couldn''t deduce Spark version');
            else
                sparkVer = tok{1};
            end
            obj.SparkVersion = sparkVer;
            
        end
        
    end
    
    % Getters/Setters
    methods
        function curVer = get.CurrentVersion(obj)
            curVer = obj.Config.CurrentVersion;
        end
    end
    
end

function tok = getToken(str, rx)
    tok = regexp(str, [rx, '\s*([^ \t\r\n]+)'], 'tokens', 'once');
    if isempty(tok)
        tok = string.empty;
    else
        tok = string(tok{1});
    end
end

function base = getBaseName(name)
    tok = regexp(name, "([^0-9]+).[0-9]+.*", "tokens", "once");
    if ~isempty(tok)
        base = tok{1};
    else
        error("Spark:Error", "Couldn't find base part of name");
    end
end

function [artifactId, version] = splitJarName(name)
    % splitJarName Retrieve artifactId and version from Jar name
    %
    % Typical examples to catch
    %   algebra_2.12-2.0.0-M2.jar
    %   hadoop-mapreduce-client-app-2.7.4.jar
    %   automaton-1.11-8.jar
    %   jsr305-3.0.0.jar
    
    % First check if it has a Scala version
    tok = regexp(name, "(?<artifactId>[^0-9]+_2\.[0-9]+)\-(?<version>[0-9].*)\.jar", "tokens", "once");
    if ~isempty(tok)
        artifactId = tok(1);
        version = tok(2);
        return;
    end
    
    % Then check for a version without any numbers in the name
    tok = regexp(name, "(?<artifactId>[^0-9]+)\-(?<version>[0-9].*)\.jar", "tokens", "once");
    if ~isempty(tok)
        artifactId = tok(1);
        version = tok(2);
        return
    end
    
    % Check for Jar files with a number in them
    tok = regexp(name, "(?<artifactId>.+)\-(?<version>[0-9].*)\.jar", "tokens", "once");
    if ~isempty(tok)
        artifactId = tok(1);
        version = tok(2);
        return
    end
    
    pi

end

function S = mavenSearch(artifactId, version)
    % mavenSearch Search maven for artifacts
    %
    % Example URL
    % https://search.maven.org/solrsearch/select?q=g:%22com.google.inject%22+AND+a:%22guice%22+AND+v:%224.2.3%22&core=gav&rows=20&wt=json
    
    S = [];
    url = sprintf('https://search.maven.org/solrsearch/select?q=a:"%s"+AND+v:"%s"&core=gav&rows=20&wt=json', ...
        artifactId, version);
    R = webread(url);
    if isstruct(R) && R.responseHeader.status == 0
        if R.response.numFound == 1
            % We have a single hit
            groupId = R.response.docs.g;
            S = struct("groupId", groupId, "artifactId", artifactId, "version", version);
        end
    end
end