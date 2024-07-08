@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pvm version
	echo.
	echo Displays the version number of this pvm release, 
	echo including the current revision from git, if available.
	echo.
	echo The format of the git revision is:
	echo     ^<major_version^>-^<train^>-^<minor_version^>
	echo where `num_commits` is the number of commits since `minor_version` was tagged.
	exit /b
)

set default="%~dp0..\version"

if "%PVM_HOME%" == "" (
    echo PVM_HOME variable is not set, recommended to set the variable.
) else (
	set path="%PVM_HOME%\version"

	if exist %path% (
    	set default=%path%
	)
)

for /f %%v in ('type %default%') do set version=%%v

echo Python Version Manager %version% (set by %default%)
