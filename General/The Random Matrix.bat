REM The Random Matrix
REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
Title The Random Matrix
color 0A

:Matrix
setlocal EnableDelayedExpansion
set "line="

for /L %%i in (1,1,50) do (
    set /a "randChoice=!RANDOM! %% 36"
    if !randChoice! lss 10 (
        set "char=!randChoice!"
    ) else (
        set /a "char=!randChoice!+55"
        cmd /c exit /b !char!
        for /f "delims=" %%a in ('cmd /c echo:^|prompt $H$E$Q$V') do set "char=%%a"
    )
    set "line=!line!!char!"
)

echo !line!
goto Matrix
endlocal

