function root = getSparkRoot(varargin)
    % getSparkApiRoot Return root of Apache Spark project
    
    % Copyright MathWorks, 2020

    here = fileparts(mfilename('fullpath'));
    
    root = fileparts(fileparts(here));
    
    if nargin > 0
        root = fullfile(root, varargin{:});
    end
end

