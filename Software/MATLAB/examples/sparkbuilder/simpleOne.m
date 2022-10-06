function [a,b] = simpleOne(x, y)
    % simpleOne Example function for SparkBuilder
    %
    % For the purpose of compilation, the types of the arguments are
    % restricted. In newer releases, we could specify this with the
    % `arguments` keyword, but to keep it compatible with older releases,
    % it's commented out here.

    % arguments
    %    x (1,1) string
    %    y (1,1) int64
    % end

    % Copyright 2021 MathWorks, Inc.

    a = x + string(y);
    b = y + strlength(x);

end