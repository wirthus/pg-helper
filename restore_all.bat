@echo off

setlocal

call _env.bat %1
if not %errorlevel% equ 0 exit /b %errorlevel%

call restore_schema.bat
call restore_data.bat
