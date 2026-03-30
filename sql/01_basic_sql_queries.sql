-- Basic SQL Queries
-- Table: public.nyc_census_blocks

-- Exercise 1: What is the Asian population of the City of New York?
-- Expected output: one row with the total Asian population for all census blocks

-- TODO: Write a SELECT statement to calculate the total Asian population
-- Hint: Use SUM() on the asianpop column
-- Hint: Use asian_pop as the output alias



-- Exercise 2: What is the population of Manhattan?
-- Expected output: one row with the total population of Manhattan

-- TODO: Write a SELECT statement to calculate total population in Manhattan
-- Hint: Use SUM() on the totalpop column
-- Hint: Filter rows where boroname = 'Manhattan'
-- Hint: Use manhattan_pop as the output alias



-- Exercise 3: For each borough, what percentage of the population is black?
-- Expected output: one row per borough with borough name and black population percentage

-- TODO: Write a SELECT statement with GROUP BY to calculate black population percentage per borough
-- Hint: Use SUM(blackpop) and SUM(totalpop)
-- Hint: Percentage = (SUM(blackpop) / SUM(totalpop)) * 100
-- Hint: Use 100.0 or ::numeric to avoid integer division
-- Hint: GROUP BY boroname
-- Hint: Use ORDER BY boroname for readability
-- Hint: Use percentage_black as the output alias


