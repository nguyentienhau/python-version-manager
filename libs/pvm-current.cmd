@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pyenv current
	echo.
	echo Shows the currently selected Python version and how it was selected.
	exit /b
)

set default="%~dp0..\current"

if "%PVM_HOME%" == "" (
	echo PVM_HOME variable is not set, recommended to set the variable.
) else (
	set path="%PVM_HOME%\current"

	if exist %path% (
    	set default=%path%
	)
)

for /f %%v in ('type %default%') do set version=%%v

echo Python %version% (set by %default%)
