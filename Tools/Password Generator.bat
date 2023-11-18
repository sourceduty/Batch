REM Password Generator
REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
setlocal EnableDelayedExpansion

:: Set the length of the password
set "length=10"

:: Define the characters that can be used in the password
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

:: Initialize the password variable
set "password="

:: Generate the password
for /L %%i in (1,1,%length%) do (
    set /a "index=!random! %% 62"
    for %%j in (!index!) do set "password=!password!!chars:~%%j,1!"
)

:: Output the password
echo Generated Password: %password%

endlocal
pause
