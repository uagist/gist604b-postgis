-- Part 4: Spatial Joins Queries
-- NOTE: These queries should complete in less than 30 seconds. If they are slow, check that spatial indexes exist.

-- Exercise 1: What subway stations are in 'East Village'? What subway route is it on?
-- Expected output: multiple rows with station name and route

-- TODO: Write a SELECT statement to find subway stations in 'East Village'
-- Hint: Use the nyc_subway_stations and nyc_neighborhoods tables
-- Hint: Filter rows where n.name = 'East Village'
-- Hint: Use ST_Contains(n.geom, ss.geom)
-- Hint: Use table aliases (ss, n)
-- Hint: Return station name and route



-- Exercise 2: What are all the neighborhoods served by the 4-train?
-- Expected output: multiple rows with unique neighborhood names

-- TODO: Write a SELECT statement to find neighborhoods served by the 4-train
-- Hint: Use the nyc_neighborhoods and nyc_subway_stations tables
-- Hint: Filter subway routes using LIKE '%4%'
-- Hint: Use ST_Intersects(n.geom, ss.geom)
-- Hint: Use DISTINCT to avoid duplicate neighborhood names
-- Hint: Use neighborhood_name as the output alias



-- Exercise 3: How many people live in the Financial District?
-- Expected output: one row with total population

-- TODO: Write a SELECT statement to calculate population in the Financial District
-- Hint: Use the nyc_census_blocks and nyc_neighborhoods tables
-- Hint: Filter rows where n.name = 'Financial District'
-- Hint: Use ST_Intersects(n.geom, cb.geom)
-- Hint: Use SUM(total_pop)
-- Hint: Use population_financial_district as the output alias



-- Exercise 4: What are the population densities (people / km^2) of the 'East Village' and 'West Village'?
-- Expected output: two rows with neighborhood name and population density per square kilometer

-- TODO: Write a SELECT statement to calculate population density for East Village and West Village
-- Hint: Use the nyc_neighborhoods and nyc_census_blocks tables
-- Hint: Filter rows where n.name IN ('East Village', 'West Village')
-- Hint: Use ST_Intersects(n.geom, cb.geom)
-- Hint: Density = population / area
-- Hint: Use SUM(cb.total_pop)
-- Hint: Use ST_Area(ST_Transform(n.geom, 26918)) to calculate area
-- Hint: Convert square meters to square kilometers by dividing by 1000000
-- Hint: Use 1.0 or ::numeric to avoid integer division
-- Hint: GROUP BY n.name, n.geom
-- Hint: Use ORDER BY n.name for readability
-- Hint: Use population_density_per_sqkm as the output alias
