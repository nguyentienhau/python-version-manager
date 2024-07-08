@echo off
setlocal

if "%2" == "--help" (
	echo Usage: pvm global ^<version^>
	echo.
	echo Sets the global Python version
	echo Override the global version by setting the directory version with "pvm local"
	exit /b
)

set version_path=%1\versions\%2

if exist %version_path% (
	setx PVM_CURRENT %version_path%
	echo %2 > %1\current.txt
	echo Now using Python %2
) else (
	echo Python %2 was not found
)
