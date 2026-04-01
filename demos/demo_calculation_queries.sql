-- Convert total population to population in thousands
SELECT 
    SUM(popn_total) / 1000.0 AS population_in_thousands
FROM nyc_census_blocks;


-- What percentage of each borough's population is white?
-- Note: 100.0 forces a decimal calculation
SELECT 
    (SUM(popn_white) * 100.0 / SUM(popn_total)) AS white_population_percentage
FROM nyc_census_blocks;


-- Using 100 (integer) may truncate the result due to integer division
SELECT 
    (SUM(popn_white) * 100 / SUM(popn_total)) AS white_population_percentage
FROM nyc_census_blocks;


-- Alternative: Using ::numeric to force decimal calculation
SELECT 
    (SUM(popn_white)::numeric * 100 / SUM(popn_total)) AS white_population_percentage
FROM nyc_census_blocks;


-- Average total population per census block, rounded to 2 decimal places
SELECT 
    ROUND(AVG(popn_total), 2) AS avg_population
FROM nyc_census_blocks;

