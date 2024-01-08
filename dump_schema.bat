call _env.bat

pg_dump ^
	--file %SCHEMA_FILE% ^
	--schema-only ^
	--no-security-labels ^
	--no-password
