@echo off

setlocal

call _env.bat %1
if not %errorlevel% equ 0 exit /b %errorlevel%

dropdb ^
	--force ^
	--if-exists ^
	--no-password ^
	%PGDATABASE%
