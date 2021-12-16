classdef PomDep < handle
    % PomDef Class to handle pom dependencies
    %
    
    % Copyright 2020 The MathWorks, Inc.
    
    properties
        Data
        Name
        Top
        Deps
    end
    
    
    methods
        function obj = PomDep(lines)
            obj.initData(lines);
        end
        
        function initData(obj, lines)
            headerLine = ...
                regexptranslate('escape', "[INFO]") + ... The INFO preamble
                "[^@]+@" + ... skil until @
                "[ ]+([a-zA-Z:0-9._-]+)" ... the name
                ;
            % Example
            % [INFO] org.apache.spark:spark-parent_2.12:pom:3.0.1
            % [INFO] +- org.spark-project.spark:unused:jar:1.0.0:compile
            % [INFO] +- org.scalatest:scalatest_2.12:jar:3.0.8:test
            % [INFO] |  +- org.scala-lang:scala-library:jar:2.12.10:test

            firstEntryLine = ...
                regexptranslate('escape', "[INFO]") + ... The INFO preamble
                "[ |+-\\]+" + ... hierarchy help
                "(?<group>[a-z0-9._-]+):" + ... The group
                "(?<artifact>[a-z0-9._-]+):" + ... The artifact
                "(?<type>[a-z]+):" + ... The type
                "(?<version>[a-z0-9._-]+)" ... The version
                ;
            entryLine = ...
                regexptranslate('escape', "[INFO]") + ... The INFO preamble
                "[ |+-\\]+" + ... hierarchy help
                "(?<group>[a-z0-9._-]+):" + ... The group
                "(?<artifact>[a-z0-9._-]+):" + ... The artifact
                "(?<type>[a-z]+):" + ... The type
                "(?<version>[a-z0-9._-]+):" + ... The version
                "(?<stage>[a-z0-9._-]+)" ... The stage
                ;
            tok = regexp(lines{1}, headerLine, 'tokens', 'once');
            obj.Name = tok{1};
            
            tok = regexp(lines{2}, firstEntryLine, 'names', 'once');
            obj.Top = tok;
            for k=3:length(lines)
                L = lines{k};
                tok = regexp(L, entryLine, 'names', 'once');
                if isempty(tok)
                    % Probably tests entry
                    continue;
                end
                if isempty(obj.Deps)
                    obj.Deps = tok;
                else
                    obj.Deps(end+1) = tok;
                end
            end
        end
    end
    
end
