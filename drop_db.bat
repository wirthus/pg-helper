call _env.bat

dropdb ^
	--force ^
	--if-exists ^
	--no-password ^
	%PGDATABASE%
