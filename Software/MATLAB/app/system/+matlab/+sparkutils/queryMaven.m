function result = queryMaven(varargin)
    % queryMaven Query Maven for a specific artifact
    %
    % This function will query maven for a specific artifact and
    % return the results in JSON.
    % It takes string argument pairs, that corresponds to query arguments
    % in the API. Examples are:
    % g - groupId
    % a - artifactId
    % v - version
    %
    % Example, query for the artifact scala-compiler with version 2.12.10
    % result = matlab.sparkutils.queryMaven('a', 'scala-compiler', 'v', '2.12.10');
    
    % Copyright 2021 The MathWorks, Inc.
    
    % Example URL
    % https://search.maven.org/solrsearch/select?q=g:%22com.google.inject%22+AND+a:%22guice%22+AND+v:%224.2.3%22&core=gav&rows=20&wt=json
      
    assert(rem(nargin,2)==0);
    
    baseUrl = 'https://search.maven.org/solrsearch/select?q=';
    endQuery = '&core=gav&rows=20&wt=json';
    query = '';
    for k=1:2:length(varargin)
       if k > 1
           query = [query, '+AND+']; %#ok<AGROW>
       end
       query = [query, sprintf('%s:"%s"', varargin{k}, varargin{k+1})]; %#ok<AGROW>
    end
    fullUrl = [baseUrl, query, endQuery];
    result = webread(fullUrl);
    
end