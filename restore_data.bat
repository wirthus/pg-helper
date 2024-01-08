call _env.bat

pg_restore ^
	--dbname=%PGDATABASE% ^
	--format=d ^
	--jobs=%JOBS% ^
	--disable-triggers ^
	--no-password ^
	--exit-on-error ^
	%DATA_DIR%
