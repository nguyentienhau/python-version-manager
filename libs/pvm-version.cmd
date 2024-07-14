@echo off
setlocal

if "%2" == "--help" (
	echo Usage: pvm version
	echo.
	echo Displays the version number of this pvm release
	exit /b
)

set version_file_path=%1\version.txt
for /f %%v in ('type %version_file_path%') do set version=%%v

if "%version%" == "" (
	echo Python Version Manager version is undefined
) else (
	echo Python Version Manager %version% ^(set by %version_file_path%^)
)

