@echo off
setlocal

if "%2" == "--help" (
	echo Usage: pyenv current
	echo.
	echo Shows the currently selected Python version and how it was selected
	exit /b
)

set current_file_path=%1\current.txt
for /f %%v in ('type %current_file_path%') do set version=%%v

if "%version%" == "" (
	echo The global Python version is not set
	echo Use "pvm global <version>" command to set the global Python version
) else (
	echo Python %version% ^(set by %current_file_path%^)
)
