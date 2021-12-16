function root = sparkPackageRoot(varargin)
    % sparkPackageRoot Return root of matlab-apache-spark project
    
    % Copyright MathWorks, 2021

    here = fileparts(mfilename('fullpath'));
    
    root = fileparts(fileparts(here));
    
    if nargin > 0
        root = fullfile(root, varargin{:});
    end
end

