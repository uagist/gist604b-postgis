-- Part 2: Geometry Queries

-- Exercise 1: What is the area of the 'New Brighton' neighborhood?
-- Expected output: one row with the area of New Brighton in square meters

-- TODO: Write a SELECT statement to calculate the area of 'New Brighton'
-- Hint: Use ST_Area() on the geom column
-- Hint: Use the nyc_neighborhoods table
-- Hint: Filter rows where name = 'New Brighton'
-- Hint: Use new_brighton_area as the output alias



-- Exercise 2: What is the area of the Bronx in acres?
-- Expected output: one row with the total area of the Bronx in acres

-- TODO: Write a SELECT statement to calculate the area of the Bronx in acres
-- Hint: Use ST_Area() on the geom column
-- Hint: Use the nyc_neighborhoods table
-- Hint: Filter rows where name = 'Bronx'
-- Hint: Convert square meters to acres using 4046.86
-- Hint: Use bronx_area_acres as the output alias



-- Exercise 3: How many census blocks in New York City DO NOT have a hole in them?
-- Expected output: one row with the count of census blocks without holes

-- TODO: Write a SELECT statement to count blocks without holes
-- Hint: Use ST_NumInteriorRings(geom)
-- Hint: Use the nyc_census_blocks table
-- Hint: Filter where ST_NumInteriorRings(geom) = 0
-- Hint: Use COUNT(*)



-- Exercise 4: What is the total length of streets (in miles) in New York City?
-- Expected output: one row with total street length in miles

-- TODO: Write a SELECT statement to calculate total street length in miles
-- Hint: Use ST_Length() on the geom column
-- Hint: Use the nyc_streets table
-- Hint: Use SUM() to total the length
-- Hint: Convert meters to miles using 1609.34
-- Hint: Use total_length_miles as the output alias



-- Exercise 5: How long is '5th Ave'?
-- Expected output: one row with the length of 5th Ave

-- TODO: Write a SELECT statement to calculate the length of '5th Ave'
-- Hint: Use ST_Length() on the geom column
-- Hint: Use the nyc_streets table
-- Hint: Filter rows where name = '5th Ave'
-- Hint: Use fifth_ave_length as the output alias



-- Exercise 6: What is the JSON representation of the boundary of 'Soho'?
-- Expected output: one row with GeoJSON representation

-- TODO: Write a SELECT statement to return GeoJSON for 'Soho'
-- Hint: Use ST_AsGeoJSON(geom)
-- Hint: Use the nyc_neighborhoods table
-- Hint: Filter rows where name = 'Soho'



-- Exercise 7: How many polygons are in the 'Coney Island' multipolygon?
-- Expected output: one row with the number of polygons

-- TODO: Write a SELECT statement to count geometries in 'Coney Island'
-- Hint: Use ST_NumGeometries(geom)
-- Hint: Use the nyc_neighborhoods table
-- Hint: Filter rows where name = 'Coney Island'



-- Exercise 8: What are the 5 longest roads in NYC?
-- Expected output: five rows with road names and lengths

-- TODO: Write a SELECT statement to find the 5 longest roads
-- Hint: Use ST_Length() on the geom column
-- Hint: Use the nyc_streets table
-- Hint: ORDER BY length descending
-- Hint: Use LIMIT 5
