function entry = getRuntimeMapping(release, output)
    % getRuntimeMapping Returns mapping of runtime to MATLAB Release
    %
    %   entry = getRuntimeMapping(release, output)
    %
    % Without arguments, it lists the the mappings.
    %
    % With an argument, either a MATLAB Release, like R2020a, or a Runtime
    % Version, like v98, can be used.
    %
    % E = matlab.utils.getRuntimeMapping('v97')
    % E =
    %   struct with fields:
    %
    %       Release: 'R2019b'
    %       Runtime: 'v97'
    %
    % If the release is 'current', it will pick the MATLAB release that is
    % currently running.
    %
    % If the second argument, output, is present, it will only return that
    % field, e.g.
    %
    % MCRROOT = matlab.utils.getRuntimeMapping('current', 'MCRRoot')
    % MCRROOT =
    %     '/usr/local/MATLAB/MATLAB_Runtime/v98'
    %

    % Copyright 2022 MathWorks, Inc
    
    ENTRIES = struct( ...
        "Release", {"R2022b", "R2022a", "R2021b", "R2021a", "R2020b", "R2020a", "R2019b", "R2019a"}, ...
        "Runtime", {"R2022b", "v912", "v911", "v910", "v99", "v98", "v97", "v96"} ...
        );
    numEntries = length([ENTRIES.Release]);


    if nargin == 0
        entry = ENTRIES;
        return;
    end

    if strcmp(release, 'current')
        release = sprintf('R%s', version('-release'));
    end

    switch release(1)
        case 'R'
            entry = ENTRIES(strcmp([ENTRIES.Release], release));
        case 'v'
            entry = ENTRIES(strcmp([ENTRIES.Runtime], release));
        otherwise
            error('SPARK:ERROR', ['The release argument must either be a MATLAB Release, ', ...
                'e.g. R2019b, or a runtime version, e.g. v97']);
    end

    if isempty(entry)
        error('SPARK:ERROR', 'No runtime entry for release: %s in file: %s"', release, runtimesPath);
    end
    if nargin > 1
        if isfield(entry, output)
            entry = entry.(output);
        else
            error('SPARK:ERROR', 'No such field in structure: "%s"', output);
        end
    end

end

