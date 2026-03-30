-- Part 3: Spatial Relationships Queries

-- Exercise 1: What is the geometry value for the street named 'S Oxford St'?
-- Expected output: one row with the geometry representation

-- TODO: Write a SELECT statement to retrieve the geometry of 'S Oxford St'
-- Hint: Use ST_AsText(geom)
-- Hint: Use the nyc_streets table
-- Hint: Filter rows where name = 'S Oxford St'
-- Hint: Use s_oxford_st_geometry as the output alias



-- Exercise 2: What neighborhood and borough is S Oxford St in?
-- Expected output: one row with street name, neighborhood name, and borough

-- TODO: Write a SELECT statement to find the neighborhood and borough for 'S Oxford St'
-- Hint: Use the nyc_streets and nyc_neighborhoods tables
-- Hint: Use ST_Intersects(s.geom, n.geom)
-- Hint: Filter rows where s.name = 'S Oxford St'
-- Hint: Use table aliases (s, n)



-- Exercise 3: What streets does S Oxford St join with?
-- Expected output: multiple rows with intersecting street names

-- TODO: Write a SELECT statement to find streets that intersect with 'S Oxford St'
-- Hint: Use the nyc_streets table twice (self-join)
-- Hint: Use ST_Intersects(s1.geom, s2.geom)
-- Hint: Filter where s1.name = 'S Oxford St'
-- Hint: Exclude the same street using s1.gid != s2.gid



-- Exercise 4: Approximately how many people live within 50 meters of S Oxford St?
-- Expected output: one row with total population

-- TODO: Write a SELECT statement to calculate population within 50 meters of 'S Oxford St'
-- Hint: Use the nyc_census_blocks and nyc_streets tables
-- Hint: Use ST_DWithin(cb.geom, s.geom, 50)
-- Hint: Filter where s.name = 'S Oxford St'
-- Hint: Use SUM(total_pop)
-- Hint: Use population_near_s_oxford_st as the output alias
