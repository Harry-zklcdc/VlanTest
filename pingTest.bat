@echo off

if "%1" == "reverse" (
    goto testFail
)
goto testSuccess


:testSuccess
ping -n 10 -w 1000 11.192.168.6
if %ERRORLEVEL% == 0 (
    echo ping ok
    exit 0
)
if %ERRORLEVEL% == 1 (
    echo ping fail
    exit 1
)
goto:eof

:testFail
ping -n 10 -w 1000 11.192.168.6
if %ERRORLEVEL% == 0 (
    echo ping ok
    exit 1
)
if %ERRORLEVEL% == 1 (
    echo ping fail
    exit 0
)
goto:eof