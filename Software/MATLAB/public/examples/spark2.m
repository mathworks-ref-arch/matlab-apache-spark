function spark2(sparkMaster)
    % spark2 Small Spark example using datasets and methods
    
    % Copyright, MathWorks 2020
    

    if nargin < 1
        sparkMaster = 'local';
    end
    
    appName = [mfilename, '-', datestr(now,30)];
    
    import matlab.compiler.mlspark.*
    
    spark = getDefaultSparkSession(appName, sparkMaster);
    
    % First, we read some raw data from a CSV file.
    flightsCSV = which('airlinesmall.csv');
    tic;
    flights = spark.read.format("csv") ...
        .option("header", "true") ...
        .option("inferSchema", "true") ...
        .load(addFileProtocol(flightsCSV));
    csvRead = toc %#ok<NASGU,NOPRT>

    
    % This will be a few columns that are not of the right type, so let's
    % fix those.
    cleanFlights = flights ...
        .withColumn('ArrDelay', flights.col('ArrDelay').cast('int')) ...
        .withColumn('DepDelay', flights.col('DepDelay').cast('int'));
    
    fprintf('Flights in dataset: %d\n', cleanFlights.count());
    first10 = cleanFlights.limit(10);
    T10 = table(first10); %#ok<NASGU>
    
    % Or just
    cleanFlights.show(10);
    
    % Now write it back in delta format
    deltaLocation = '/tmp/deltaflights';
    % Remove if already exists
    if exist(deltaLocation, 'dir')
        rmdir(deltaLocation, 's');
    end
    tic;
    cleanFlights ...
        .write.format("delta")...
        .save(deltaLocation);
    deltaWrite = toc%#ok<NASGU,NOPRT>
    
    tic;
    cf2 = spark.read.format("delta") ...
        .load(deltaLocation);
    deltaRead = toc%#ok<NASGU,NOPRT>
    
    % Which columns are in this dataset?
    cf2.columns
    
    % How many flights leave a certain origin on a certain day of week?
    dow=cf2.groupBy('Origin', 'DayOfWeek').count()%#ok<NOPRT>
    dow.show()
    
    % And if we sort them?
    dow.sort("count").show(10)
    
    % The default sort is ascending, but if we want to see the descending 
    % order, we have to get more precise. We have to provide a column object,
    % and set it to be descending in order.
    dow.sort(dow.col("count").desc()).show
    
    % Apparently, O'Hare leads this six days of the week

    % We can also use simple SQL syntax.
    
    % How many flights were there from 'AA'
    AAflights = cf2.filter("UniqueCarrier LIKE 'AA' AND DayOfWeek = 3") ...
        .select('ArrDelay', 'DepDelay');
    AAflights.count()
    
    AAT = table(AAflights);
    plot([AAT.ArrDelay, AAT.DepDelay]);
    title("Arrival and Depature delay for Wednesday AA Flights");
    legend("Arrival", "Departure"); 
    
    ylabel("Delay");
    xlabel("Flights");
    shg;
    fprintf('### Finished example %s\n', mfilename);
    
end