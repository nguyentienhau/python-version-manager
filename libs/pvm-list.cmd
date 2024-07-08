@echo off
setlocal

if "%2" == "--help" (
	echo Usage: pyenv list
	echo.
	echo Lists all Python versions found in "%1\versions\*"
	exit /b
)

set versions_path=%1\versions

if exist %versions_path% (
	cd "%versions_path%"
	dir /b /o:gn
) else (
	echo Python Version Manager was not found any Python versions
)
