setlocal

call _env.bat %1
if not %errorlevel% equ 0 exit /b %errorlevel%

call dump_schema.bat
call dump_data.bat
