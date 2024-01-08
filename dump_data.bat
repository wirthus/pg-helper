call _env.bat

pg_dump ^
	--file %DATA_DIR% ^
	--format=d ^
	--data-only ^
	--disable-triggers ^
	--no-comments ^
	--jobs=%JOBS% ^
	--no-password
