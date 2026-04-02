-- SELECT statement - select data from table

-- All columns from the nyc_neighborhoods table
SELECT * FROM nyc_neighborhoods;

-- Column name from the nyc_neighborhoods table
SELECT name FROM nyc_neighborhoods;

-- Columns name, boroname from the nyc_neighborhoods table
SELECT name, boroname FROM nyc_neighborhoods;

-- SELECT DISTINCT - select unique values
SELECT DISTINCT boroname
FROM nyc_neighborhoods;

-- ORDER BY - sort ascending/descending
-- Order by the name - default is ascending
SELECT 
  name 
FROM nyc_neighborhoods
ORDER BY name;

-- Order by the name - ascending
SELECT 
  name 
FROM nyc_neighborhoods
ORDER BY name ASC;

-- Order by the name - descending
SELECT 
  name 
FROM nyc_neighborhoods
ORDER BY name DESC;

