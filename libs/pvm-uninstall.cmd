@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pvm uninstall ^<version^>
	echo.
	echo Attempt to remove the specific Python version
	echo If the version does not exist, do not display an error message
	echo See "pvm list" for a complete list of installed versions
	exit /b
)

set version_path=%1\versions\%2

if exist %version_path% (
	rmdir /s %version_path%
	echo Uninstalled Python %2
) else (
	echo Python %2 is not found
)

set current_file_path=%home_path%\current.txt
for /f %%v in ('type %current_file_path%') do set version=%%v

if "%2" == "%version%" (
	reg delete HKCU\Environment /f /v PVM_CURRENT
	del %current_file_path%
)
