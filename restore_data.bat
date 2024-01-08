@echo off

setlocal

call _env.bat %1
if not %errorlevel% equ 0 exit /b %errorlevel%

pg_restore ^
	--dbname=%PGDATABASE% ^
	--format=d ^
	--jobs=%JOBS% ^
	--disable-triggers ^
	--no-password ^
	--exit-on-error ^
	%DATA_DIR%
