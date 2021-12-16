classdef SparkSessionHandler < handle
    % SparkSessionHandler Class to handle Spark sessions
    %
    % This class will make it easier to reuse different Spark sessions,
    % without always recreating them.
    
    % Copyright 2020 The MathWorks, Inc.

    properties
        SessionMasters
        % SessionNames
        Sessions
    end
    
    methods (Access = private)
        function obj = SparkSessionHandler()
        end
        
        function idx = findSession(obj, sparkMaster)
            idx = [];
            for k=1:length(obj.SessionMasters)
                if strcmp(sparkMaster, obj.SessionMasters{k})
                    idx = k;
                    break;
                end
            end
        end
        
        function idx = addSession(obj, sparkMaster, sparkSession)
            if isempty(obj.SessionMasters)
                obj.SessionMasters = {sparkMaster};
                obj.Sessions= {sparkSession};
            else
                obj.SessionMasters{end+1} = sparkMaster;
                obj.Sessions{end+1} = sparkSession;
            end
            idx = length(obj.Sessions);
        end
    end
    
    methods (Static, Access = private)
        function SH = getSessionHandler()
            persistent SessionHandler
            if isempty(SessionHandler)
                SessionHandler = matlab.sparkutils.SparkSessionHandler();
            end
            SH = SessionHandler;
        end
    end
    methods (Static)
        
        function spark = getSession(sparkMaster)
            SH = matlab.sparkutils.SparkSessionHandler.getSessionHandler();
            idx = SH.findSession(sparkMaster);
            if isempty(idx)
                spark = getDefaultSparkSession('', sparkMaster);
                idx = SH.addSession(sparkMaster, spark);
            end
            spark = SH.Sessions{idx};
        end
        
        function sessions = listSessions()
            SH = matlab.sparkutils.SparkSessionHandler.getSessionHandler();
            if nargout == 0
                N = length(SH.SessionMasters);
                if N == 0
                    fprintf('No Spark sessions\n');
                else
                    fprintf('Spark sessions:\n%s', ...
                        sprintf('\t%s\n', SH.SessionMasters{:}));
                end
            else
                sessions = SH.SessionMasters;
            end
        end
        
        function deleteSessions()
            SH = matlab.sparkutils.SparkSessionHandler.getSessionHandler();
            SH.SessionMasters = {};
            SH.Sessions = {};            
        end
    end
    
end
