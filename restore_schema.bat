@echo off

setlocal

call _env.bat %1
if not %errorlevel% equ 0 exit /b %errorlevel%

call create_db.bat

psql ^
	--dbname=%PGDATABASE% ^
	--file=%SCHEMA_FILE% ^
	--no-password ^
	-v ON_ERROR_ROLLBACK=ON
