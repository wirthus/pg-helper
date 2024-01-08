@echo off

if not "%1"=="" (
  set PGDATABASE=%1
)

if "%PGDATABASE%"=="" (
  echo "DB not set"
  exit /b 1
)

set PGPASSFILE=.pgpass
set PGHOST=localhost
set PGUSER=postgres
set PGCLIENTENCODING=UTF8

set DB_DIR=%PGDATABASE%
set SCHEMA_FILE=%DB_DIR%\schema.sql
set DATA_DIR=%DB_DIR%\data

set JOBS=5

if not exist "%DB_DIR%" mkdir "%DB_DIR%"
