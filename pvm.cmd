@echo off
setlocal

if "%1" == "" (
	call :plugin help %2
) else if "%1" == "--help" (
	call :plugin help %2
) else (
	call :plugin %1 %2
)

exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: execute pvm command
:plugin
set exec=%~dp0.\libs\pvm-%1
call :normalizepath %exec% exec

set home_path=%~dp0.

if "%PVM_HOME%" == "" (
	echo PVM_HOME environment variable is not set
) else (
	set home_path=%PVM_HOME%
)

if exist %exec%.cmd (
	call %exec%.cmd %home_path% %2
) else if exist %exec%.bat (
	call %exec%.bat %home_path% %2
) else (
	echo Python Version Manager do not have "%1" command
)

goto :eof

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: convert path which may have relative nodes (.. or .) to its absolute value so can be used in PATH
:normalizepath
set %~2=%~dpf1

goto :eof
