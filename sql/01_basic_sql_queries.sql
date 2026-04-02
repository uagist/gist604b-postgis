-- Part 1: Basic SQL Queries

-- Exercise 1: What is the Asian population of the City of New York?
-- Expected output: one row with the total Asian population for all census blocks
-- asian_pop
-- 1038369

-- Hint: Use SUM() on the popn_asian column
-- Hint: Use asian_pop as the output alias
-- Hint: Use the nyc_census_blocks table

-- TODO: Write your query below



-- Exercise 2: What is the population of Manhattan?
-- Expected output: one row with the total population of Manhattan
-- manhattan_pop
-- 1585873

-- Hint: Use SUM() on the popn_total column
-- Hint: Use manhattan_pop as the output alias
-- Hint: Use the nyc_census_blocks table
-- Hint: Filter rows where boroname = 'Manhattan'

-- TODO: Write your query below



-- Exercise 3: For each borough, what percentage of the population is black?
-- Expected output: one row per borough with borough name and black population percentage
--   boroname       percentage_black
-- 1 Brooklyn       34.33876312532439
-- 2 Manhattan      15.555280908370342
-- 3 Queens         19.125346708383002
-- 4 Staten Island  10.636613828856698
-- 5 The Bronx      36.47369013824193

-- Hint: Percentage = (SUM(popn_black) / SUM(popn_total)) * 100
-- Hint: Use 100.0 or ::numeric to avoid integer division
-- Hint: Use percentage_black as the output alias
-- Hint: Use the nyc_census_blocks table
-- Hint: GROUP BY boroname
-- Hint: Use ORDER BY boroname for readability

-- TODO: Write your query below




-- Exercise 4: What is the average population per census block in each borough?
-- Expected output: one row per borough with borough name and average population
--   boroname       avg_population
-- 1 Brooklyn       ...
-- 2 Manhattan      ...
-- 3 Queens         ...
-- 4 Staten Island  ...
-- 5 The Bronx      ...

-- Hint: Use AVG() on the popn_total column
-- Hint: Use avg_population as the output alias
-- Hint: Use the nyc_census_blocks table
-- Hint: GROUP BY boroname
-- Hint: Use ORDER BY avg_population DESC for readability

-- TODO: Write your query below
