-- Geometries

-- ST_AsText(): Return the geometry as text
SELECT 
    ST_AsText(geom) AS geometry_wkt
FROM nyc_neighborhoods
WHERE name = 'Tribeca';

-- ST_AsGeoJSON(): Return the geometry as GeoJSON
SELECT 
    ST_AsGeoJSON(geom) AS geometry_geojson
FROM nyc_neighborhoods
WHERE name = 'Tribeca';

-- ST_GeometryType(): Check the geometry type
SELECT 
    ST_GeometryType(geom) AS geometry_type
FROM nyc_streets;

SELECT 
    name,
    ST_GeometryType(geom) AS geometry_type
FROM nyc_neighborhoods
WHERE name = 'Tribeca';


-- ST_NumInteriorRings(): Count interior rings (holes) in polygons
SELECT 
    ST_NumInteriorRings(geom) AS num_holes
FROM nyc_neighborhoods
LIMIT 5;

-- ST_Area(): Area of one neighborhood in square meters
SELECT 
    ST_Area(geom) AS area_sq_m
FROM nyc_neighborhoods
WHERE name = 'Tribeca';

-- ST_Length(): Length of one street in meters
SELECT 
    ST_Length(geom) AS length_meters
FROM nyc_streets
WHERE name = 'Broadway';

-- Total length of all street segments
SELECT 
    SUM(ST_Length(geom)) AS total_length_meters
FROM nyc_streets
WHERE name = 'Broadway';

-- Convert length from meters to kilometers
SELECT 
    SUM(ST_Length(geom)) / 1000.0 AS total_length_km
FROM nyc_streets
WHERE name = 'Broadway';

-- ST_NumGeometries(): Count how many geometry parts each Staten Island neighborhood contains
SELECT 
    name,
    ST_NumGeometries(geom) AS num_geometries
FROM nyc_neighborhoods
WHERE boroname = 'Staten Island';

-- ST_Union() + ST_Area(): Merge Staten Island neighborhoods and measure total area
SELECT 
    ST_Area(ST_Union(geom)) AS staten_island_area_sq_m
FROM nyc_neighborhoods
WHERE boroname = 'Staten Island';

-- Spatial Relationships

-- Find subway stations that intersect a specific neighborhood
SELECT 
    ss.name,
    ss.routes
FROM nyc_subway_stations AS ss
WHERE ST_Intersects(
    ss.geom,
    (
        SELECT geom
        FROM nyc_neighborhoods
        WHERE name = 'Financial District'
    )
);

-- Spatial Join: Find subway stations that intersect a specific neighborhood
SELECT 
    ss.name,
    ss.routes
FROM nyc_subway_stations AS ss
JOIN nyc_neighborhoods AS n
    ON ST_Intersects(ss.geom, n.geom)
WHERE n.name = 'Financial District';

-- Sum the population within 50 meters of a subway station
SELECT 
    SUM(popn_total) AS total_population
FROM nyc_census_blocks AS cb
WHERE ST_DWithin(
    cb.geom,
    (
        SELECT geom
        FROM nyc_subway_stations
        WHERE name = 'Brooklyn Bridge'
    ),
    50
);

-- Sum the population within 50 meters of a subway station
-- Does not work - ERROR: more than one row returned by a subquery
SELECT 
    SUM(popn_total) AS total_population
FROM nyc_census_blocks AS cb
WHERE ST_DWithin(
    cb.geom,
    (
        SELECT geom
        FROM nyc_subway_stations
        WHERE name = 'Grand Central'
    ),
    50
);

-- Spatial Join: Sum the population within 50 meters of a subway station
SELECT 
    SUM(popn_total) AS total_population
FROM nyc_census_blocks AS cb
JOIN nyc_subway_stations AS ss
    ON ST_DWithin(cb.geom, ss.geom, 50)
WHERE ss.name = 'Grand Central';