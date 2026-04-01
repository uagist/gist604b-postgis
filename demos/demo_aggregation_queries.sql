-- COUNT: Total number of neighborhoods
-- AS: creates an alias for the output column
SELECT 
    COUNT(*) AS total_neighborhoods
FROM nyc_neighborhoods;

-- SUM: Total population across all census blocks
SELECT 
    SUM(popn_total) AS total_population
FROM nyc_census_blocks;

-- AVG: Average white population per census block
SELECT 
    AVG(popn_white) AS avg_white_population
FROM nyc_census_blocks;

-- MIN: Minimum asian population in a census block
SELECT 
    MIN(popn_asian) AS min_population
FROM nyc_census_blocks;

-- MAX: Maximum black population in a census block
SELECT 
    MAX(popn_black) AS max_population
FROM nyc_census_blocks;


-- GROUP BY - Group rows with the same values into summary rows
-- Used with aggregate functions

-- Count number of neighborhoods in each borough
SELECT 
    boroname,
    COUNT(*) AS neighborhood_count
FROM nyc_neighborhoods
GROUP BY boroname;

-- Total population per borough
SELECT 
    boroname,
    SUM(popn_total) AS total_population
FROM nyc_census_blocks
GROUP BY boroname;

-- Average population per borough
SELECT 
    boroname,
    AVG(popn_total) AS avg_population
FROM nyc_census_blocks
GROUP BY boroname;

-- Boroughs ordered by total population (highest to lowest)
SELECT 
    boroname,
    SUM(popn_total) AS total_population
FROM nyc_census_blocks
GROUP BY boroname
ORDER BY total_population DESC;
