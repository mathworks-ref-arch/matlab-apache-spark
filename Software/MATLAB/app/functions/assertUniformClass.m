function assertUniformClass( className, cellArray)
    % ASSERTUNIFORMCLASS Assert cell array elements are of same type
    %
    % All elements of cell array must be of the same type
    % Example:
    %  assertUniformClass('double', {3,4,5});
    %  => Will work
    %  assertUniformClass('double', {3,4,'hello'});
    %  => Will throw an error
    
    % Copyright 2020 MathWorks, Inc.
    
    N = length(cellArray);
    for k=1:N
        if ~isa(cellArray{k}, className)
            error('SPARK:ERROR', 'Element %d is not of type %s, it''s of type %s\n', ...
                k, className, class(cellArray{k}));
        end
    end
end
