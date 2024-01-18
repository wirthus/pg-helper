setlocal

call _env.bat %1
if not %errorlevel% equ 0 exit /b %errorlevel%

if exist "%DATA_DIR%" (
	rmdir /s /q "%DATA_DIR%"
)

pg_dump ^
	--file %DATA_DIR% ^
	--format=d ^
	--data-only ^
	--disable-triggers ^
	--no-comments ^
	--no-password
