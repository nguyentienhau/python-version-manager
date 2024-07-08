@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pvm version
	echo.
	echo Displays the version number of this pvm release
	exit /b
)

set home_path=%~dp0..

if "%PVM_HOME%" == "" (
	echo PVM_HOME environment variable is not set
) else (
	set home_path=%PVM_HOME%
)

set version_file_path=%home_path%\version.txt
for /f %%v in ('type %version_file_path%') do set version=%%v

if "%version%" == "" (
	echo Python Version Manager version is not found
) else (
	echo Python Version Manager %version% ^(set by %version_file_path%^)
)

