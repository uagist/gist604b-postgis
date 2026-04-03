-- Geometries

-- ST_AsText(): Return the geometry as text
SELECT 
    ST_AsText(geom) AS geometry_wkt
FROM nyc_neighborhoods
WHERE name = 'Soho';

-- ST_AsGeoJSON(): Return the geometry as GeoJSON
SELECT 
    ST_AsGeoJSON(geom) AS geometry_geojson
FROM nyc_neighborhoods
WHERE name = 'Soho';

-- ST_GeometryType(): Check the geometry type
SELECT 
    name,
    ST_GeometryType(geom) AS geometry_type
FROM nyc_neighborhoods
WHERE name IN ('Soho', 'Coney Island');

-- ST_NumGeometries(): Count how many geometries are inside a multipart geometry
SELECT 
    name,
    ST_NumGeometries(geom) AS num_geometries
FROM nyc_neighborhoods
WHERE name = 'Coney Island';

-- ST_NumInteriorRings(): Count interior rings (holes) in polygons
SELECT 
    ST_NumInteriorRings(geom) AS num_holes
FROM nyc_census_blocks
LIMIT 5;

-- ST_Area(): Area of one neighborhood in square meters
SELECT 
    ST_Area(geom) AS area_sq_m
FROM nyc_neighborhoods
WHERE name = 'New Brighton';

-- ST_Length(): Length of one street in meters
SELECT 
    ST_Length(geom) AS length_meters
FROM nyc_streets
WHERE name = 'Broadway'
LIMIT 5;

-- Convert length from meters to kilometers
SELECT 
    ST_Length(geom) / 1000.0 AS length_miles
FROM nyc_streets
WHERE name = 'Broadway'
LIMIT 5;

-- Total length of all streets in NYC
SELECT 
    SUM(ST_Length(geom)) AS total_length_meters
FROM nyc_streets;

-- ST_Union(): Merge all Soho neighborhood polygons into one geometry
SELECT 
    ST_Union(geom) AS bronx_geom
FROM nyc_neighborhoods
WHERE boroname = 'Soho';

-- Measure the area of the merged Soho geometry
SELECT 
    ST_Area(ST_Union(geom)) AS bronx_area_sq_m
FROM nyc_neighborhoods
WHERE boroname = 'Soho';

-- Spatial Relationships

-- Find neighborhoods that intersect a specific street
SELECT 
    n.name,
    n.boroname
FROM nyc_neighborhoods AS n
WHERE ST_Intersects(
    n.geom,
    (
        SELECT geom
        FROM nyc_streets
        WHERE name = 'Queensboro Brg'
    )
);

-- Sum the population within 50 meters of Queensboro Brg
SELECT 
    SUM(popn_total) AS total_population
FROM nyc_census_blocks AS cb
WHERE ST_DWithin(
    cb.geom,
    (
        SELECT geom
        FROM nyc_streets
        WHERE name = 'Queensboro Brg'
    ),
    50
);

-- Spatial Join 

-- Subway stations located inside East Village
SELECT 
    ss.name,
    ss.routes
FROM nyc_subway_stations AS ss
JOIN nyc_neighborhoods AS n
    ON ST_Intersects(ss.geom, n.geom)
WHERE n.name = 'East Village';

-- Population by neighborhood for two neighborhoods
SELECT 
    n.name,
    SUM(cb.popn_total) AS total_population
FROM nyc_census_blocks AS cb
JOIN nyc_neighborhoods AS n
    ON ST_Intersects(cb.geom, n.geom)
WHERE n.name IN ('East Village', 'West Village')
GROUP BY n.name
ORDER BY n.name;
