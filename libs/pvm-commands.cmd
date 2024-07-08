@echo off

if "%1" == "--help" (
	echo Usage: pvm commands
	echo.
	echo List all available pvm commands
	exit /b
)

echo Some useful pvm commands are:
echo     help       Show help screen
echo     version    Show the current pvm version and its origin
echo     commands   List all available pvm commands
echo     install    Install a Python version using python-build
echo     uninstall  Uninstall a specific Python version
echo     global     Set or show the global Python version
echo     local      Set or show the local application-specific Python version
echo     list       List all Python versions available to pvm
echo     current    Show the current Python version and its origin
echo     duplicate  Creates a duplicate python environment
echo     latest     Print the latest installed or known version with the given prefix
echo     shell      Set or show the shell-specific Python version
echo     update     Update the cached version DB
echo     rehash     Rehash pvm shims. It runs after installing executables
echo     exec       Runs an executable by first preparing PATH so that the selected Python
echo     which      Display the full path to an executable
echo     whence     List all Python versions that contain the given executable
