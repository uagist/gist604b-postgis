-- WHERE clause - filter records based on conditions
-- All subway stations in the borough Staten Island
SELECT *
FROM nyc_subway_stations
WHERE borough = 'Staten Island';

-- Subway Stations that are in either Manhattan or Queens boroughs
SELECT *
FROM nyc_subway_stations
WHERE borough IN ('Manhattan', 'Queens');
  
-- All records with NULL values in the alt_name column
SELECT *
FROM nyc_subway_stations
WHERE alt_name IS NULL;

-- All non-NULL records
SELECT *
FROM nyc_subway_stations
WHERE alt_name IS NOT NULL;

-- Borough names that start with the letter 'T'
SELECT *
FROM nyc_subway_stations
WHERE borough LIKE 'B%';

-- Borough names that end with the letter 'n'
SELECT *
FROM nyc_subway_stations
WHERE borough LIKE '%n';

-- Cross street names that contain the word 'Ave'
SELECT *
FROM nyc_subway_stations
WHERE cross_st LIKE '%Ave%';

-- OR: Cross streets that contain 'Ave' or 'St'
SELECT *
FROM nyc_subway_stations
WHERE cross_st LIKE '%Ave%'
   OR cross_st LIKE '%St%';

-- AND: Subway stations in Manhattan that have an "Ave" cross street
SELECT *
FROM nyc_subway_stations
WHERE borough = 'Manhattan'
  AND cross_st LIKE '%Ave%';

-- NOT: Subway Stations not in Brooklyn
SELECT *
FROM nyc_subway_stations
WHERE NOT borough = 'Brooklyn';

  -- NOT: Alternative
SELECT *
FROM nyc_subway_stations
WHERE borough != 'Brooklyn';

-- COMBINED AND/OR: Cross streets that contain 'Ave' in Manhattan or Queens
SELECT *
FROM nyc_subway_stations
WHERE cross_st LIKE '%Ave%'
  AND (borough = 'Manhattan' OR borough = 'Queens');
