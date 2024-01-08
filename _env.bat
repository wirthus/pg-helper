@echo off

set PGPASSFILE=.pgpass
set PGHOST=localhost
set PGUSER=postgres
set PGDATABASE=dbname
set PGCLIENTENCODING=UTF8

set DB_DIR=%PGDATABASE%
set SCHEMA_FILE=%DB_DIR%/schema.sql
set DATA_DIR=%DB_DIR%/data

set JOBS=5
