@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pvm install [-s] [-f] ^<version^> [^<version^> ] [-r/--register]
	echo        pvm install [-f] [--32only/--64only] -a/--all
	echo        pvm install [-f] -c/--clear
	echo        pvm install -l/--list
	echo.
	echo     -l/--list           List all available versions
	echo     -a/--all            Installs all known version from the local version DB cache
	echo     -c/--clear          Removes downloaded installers from the cache to free space
	echo     -f/--force          Install even if the version appears to be installed already
	echo     -s/--skip-existing  Skip the installation if the version appears to be installed already
	echo     -r/--register       Register version for py launcher
	echo     -q/--quiet          Install using /quiet. This does not show the UI nor does it prompt for inputs
	echo     --32only            Installs only 32bit Python using -a/--all switch, no effect on 32-bit windows
	echo     --64only            Installs only 64bit Python using -a/--all switch, no effect on 32-bit windows
	echo     --dev               Installs precompiled standard libraries, debug symbols, and debug binaries. It only applies to web installer
	echo     --help              Help, list of options allowed on pvm install
	exit /b
)

echo %PVM_HOME%
