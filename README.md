# GIST 604B – PostGIS Spatial SQL

Repository for working with spatial data using PostgreSQL and PostGIS.

## Repository Structure

    .
    ├── README.md
    ├── .devcontainer
    │   ├── devcontainer.json
    │   ├── Dockerfile
    ├── sql/
    │   ├── 01_basic_sql_answers.sql
    │   ├── 02_geometry_queries.sql
    │   ├── 03_spatial_relationships.sql
    │   └── 04_spatial_joins.sql
    ├── docker-compose.yml

## Notes

- SQL files contain exercises and hints for each tutorial.
- Write and execute queries directly in the `sql/` files using the VS Code PostgreSQL extension.
- Data is downloaded and prepared inside the Codespace environment and is not stored in this repository.
- The database runs in a separate PostGIS container using Docker.
