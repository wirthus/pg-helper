call _env.bat

call create_db.bat

psql ^
	--dbname=%PGDATABASE% ^
	--file=%SCHEMA_FILE% ^
	--no-password ^
	-v ON_ERROR_ROLLBACK=ON
