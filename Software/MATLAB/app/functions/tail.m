function [varargout] = tail(varargin)
% TAIL Tail the end of the file
% Useful in inspecting the log file for DEBUG, TRACE and INFO messages.

%                 Copyright 2020 MathWorks, Inc. 
%                 $Id$

%% Initializations
logFilePath = fullfile(char(java.lang.System.getProperty('java.io.tmpdir')), 'databricks.out');

%% Parse the input flags
propParser = inputParser;
propParser.KeepUnmatched = false;
propParser.addParameter('LogFile',logFilePath);
propParser.addParameter('n',20);

% Parse & Retrieve default & input values
propParser.parse(varargin{:});
logFile = propParser.Results.LogFile;
nLines = propParser.Results.n;
if ischar(nLines)
    nLines = str2num(nLines);
end

fid = fopen(logFile,'r');

% Tail the file
if fid>0
    % We can read the file
    fseek(fid,-nLines*80,1);
    data = fread(fid,'*char');
    fclose(fid);

    if nargout == 0
        % Display it
        disp(data');
    else
        varargout{1} = data';
    end

else
    % Could not open it
    disp('Could not open the log file');
end


end %function
