setlocal

call _env.bat %1
if not %errorlevel% equ 0 exit /b %errorlevel%

pg_dump ^
	--file %SCHEMA_FILE% ^
	--schema-only ^
	--no-security-labels ^
	--no-password
