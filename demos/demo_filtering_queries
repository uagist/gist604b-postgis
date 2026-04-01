-- WHERE clause - filter records based on conditions
-- All records in the borough Staten Island
SELECT *
FROM nyc_neighborhoods
WHERE boroname = 'Staten Island';

-- Records that are in either Manhattan or Queens boroughs
SELECT *
FROM nyc_neighborhoods
WHERE boroname IN ('Manhattan', 'Queens');
  
-- All records with NULL values in the boroname column
SELECT *
FROM nyc_neighborhoods
WHERE boroname IS NULL;

-- All non-NULL records
SELECT *
FROM nyc_neighborhoods
WHERE boroname IS NOT NULL;

-- Borough names that start with the letter 'T'
SELECT *
FROM nyc_neighborhoods
WHERE boroname LIKE 'T%';

-- Borough names that end with the letter 'n'
SELECT *
FROM nyc_neighborhoods
WHERE boroname LIKE '%n';

-- Street names that contain the word 'Ave'
SELECT *
FROM nyc_streets
WHERE name LIKE '%Ave%';

-- OR: Streets that contain 'Ave' or 'St'
SELECT *
FROM nyc_streets
WHERE name LIKE '%Ave%'
   OR name LIKE '%St%';

-- AND: Neighborhoods in Manhattan that start with 'Upper'
SELECT *
FROM nyc_neighborhoods
WHERE boroname = 'Manhattan'
  AND name LIKE 'Upper%';

-- NOT: Neighborhoods not in Brooklyn
SELECT *
FROM nyc_neighborhoods
WHERE NOT boroname = 'Brooklyn';

  -- NOT: Alternative
SELECT *
FROM nyc_neighborhoods
WHERE boroname != 'Brooklyn';

-- COMBINED AND/OR: Streets that contain 'Ave' in Manhattan or Queens
SELECT *
FROM nyc_streets
WHERE name LIKE '%Ave%'
  AND (boroname = 'Manhattan' OR boroname = 'Queens');
