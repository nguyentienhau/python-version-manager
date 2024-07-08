@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pvm local ^<version^> ^<version2^> ^<..^>
	echo        pvm local --unset
	echo.
	echo Sets the local application-specific Python version
	echo by writing the version name to a file named ".python-version".
	echo.
	echo When you run a Python command, pvm will look for a ".python-version" file
	echo in the current directory and each parent directory.
	echo If no such file is found in the tree, pvm will use the global Python version
	echo specified with "pvm global".
	echo A version specified with the "PVM_VERSION" environment variable
	echo takes precedence over local and global versions.
	echo.
	echo ^<version^> can be specified multiple times and should be a version tag known to pvm.
	echo The special version string "system" will use your default system Python.
	echo Run "pvm list" for a list of available Python versions.
	echo.
	echo Example: To enable the python2.7 and python3.7 shims to find their respective executables
	echo          you could set both versions with:
	echo.
	echo "pvm local 3.7.0 2.7.15"
	exit /b
)

echo %PVM_HOME%
