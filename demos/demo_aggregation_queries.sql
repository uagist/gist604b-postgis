-- AS: creates an alias for the output column

-- COUNT: Total number of census blocks
SELECT 
    COUNT(*) AS total_census_blocks
FROM nyc_census_blocks;

-- SUM: Total population across all census blocks
SELECT 
    SUM(popn_total) AS total_population
FROM nyc_census_blocks;

-- AVG: Average white population per census block
SELECT 
    AVG(popn_white) AS avg_white_population
FROM nyc_census_blocks;

-- Average white population per census block, rounded to 2 decimal places
SELECT 
    ROUND(AVG(popn_white)::numeric, 2) AS avg_white_population
FROM nyc_census_blocks;

-- MIN: Minimum asian population in a census block
SELECT 
    MIN(popn_asian) AS min_population
FROM nyc_census_blocks;

-- MAX: Maximum asian population in a census block
SELECT 
    MAX(popn_asian) AS max_population
FROM nyc_census_blocks;

-- GROUP BY - Group rows with the same values into summary rows
-- Used with aggregate functions

-- Count number of neighborhoods in each borough
SELECT 
    boroname,
    COUNT(*) AS census_blocks_count
FROM nyc_census_blocks
GROUP BY boroname;

-- Total population per borough
SELECT 
    boroname,
    SUM(popn_total) AS total_population
FROM nyc_census_blocks
GROUP BY boroname;

-- Boroughs ordered by total population (highest to lowest)
SELECT 
    boroname,
    SUM(popn_total) AS total_population
FROM nyc_census_blocks
GROUP BY boroname
ORDER BY total_population DESC;

-- Conversions

-- What percentage of each borough's population is white?
-- Note: 100.0 forces a decimal calculation
SELECT 
    (SUM(popn_white) * 100.0 / SUM(popn_total)) AS white_population_percentage
FROM nyc_census_blocks;

-- Alternative: Using ::numeric to force decimal calculation
SELECT 
    (SUM(popn_white)::numeric * 100 / SUM(popn_total)) AS white_population_percentage
FROM nyc_census_blocks;