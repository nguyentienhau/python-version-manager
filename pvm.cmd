@echo off
setlocal

if "%1" == "" (
	call :plugin "help" %2
) else if "%1" == "--help" (
	call :plugin "help" %2
) else (
	call :plugin %1 %2
)
exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: execute pvm command
:plugin
set exec="%~dp0.\libs\pvm-%1"
call :normalizepath %exec% exec

if exist "%exec%.cmd" (
	call "%exec%.cmd" %2
) else if exist "%exec%.bat" (
	call "%exec%.bat" %2
) else (
	echo pvm: no such command "%1"
)

goto :eof

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: convert path which may have relative nodes (.. or .) to its absolute value so can be used in PATH
:normalizepath
set "%~2=%~dpf1"

goto :eof
