@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pvm global ^<version^>
	echo.
	echo Sets the global Python version
	echo Override the global version by setting the directory version with "pvm local"
	exit /b
)

set home_path=%~dp0..

if "%PVM_HOME%" == "" (
	echo PVM_HOME environment variable is not set
) else (
	set home_path=%PVM_HOME%
)

set version_path=%home_path%\versions\%1

if exist %version_path% (
	setx PVM_CURRENT %version_path%
	echo %1 > %home_path%\current.txt
	echo Now using Python %1
) else (
	echo Python %1 is not found
)
