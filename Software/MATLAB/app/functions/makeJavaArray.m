function newArr = makeJavaArray(arr)
    % MAKEJAVAARRAY Ensure java object is an array
    %
    % If a Java method expects an array of a certain object, this function
    % will ensure that it is really an array, not just a scalar Java
    % object.
    %
    % Example:
    %  arr = makeJavaArray(java.lang.String('hello'))
    %  => Will work
    %  assertUniformClass('double', {3,4,'hello'});
    %  => Will throw an error
    
    % Copyright 2020 MathWorks, Inc.
    
    N = numel(arr);
    if N > 1
        % arr is already an array
        newArr = arr;
    else
        C = class(arr);
        newArr = javaArray(C, N);
        if N == 1
            newArr(1) = arr;
        end
        
    end
