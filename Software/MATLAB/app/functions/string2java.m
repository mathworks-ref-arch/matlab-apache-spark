function jArray = string2java( varargin )
    %% STRING2JAVA Function to marshal data from MATLAB strings to a Java String Array
    %
    
    % Copyright 2020 MathWorks, Inc.
    
    N = length(varargin);
    
    jArray = javaArray('java.lang.String', N);
    
    for k=1:N
       jArray(k) = java.lang.String(varargin{k}); 
    end
end
