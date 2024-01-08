setlocal

call _env.bat %1
if not %errorlevel% equ 0 exit /b %errorlevel%

call drop_db.bat

createdb ^
	--no-password ^
	%PGDATABASE%
