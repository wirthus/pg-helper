call _env.bat

call drop_db.bat

createdb ^
	--no-password ^
	%PGDATABASE%
