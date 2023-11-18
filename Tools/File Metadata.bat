REM File Metadata

REM Enter a file path to extract detailed metadata from the file.

REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
set /p FilePath="Enter file path: "
echo.
echo Detailed Metadata for %FilePath%:
echo -----------------------------------

for %%A in ("%FilePath%") do (
    echo File Name: %%~nxA
    echo Size: %%~zA bytes
    echo File Extension: %%~xA
    echo File Location: %%~dpA
    echo Last Modified: %%~tA
    echo Attributes: %%~aA
)

echo.
echo Additional Metadata:
PowerShell -Command "& {Get-ItemProperty -Path '%FilePath%' | Format-List *}"
echo -----------------------------------
pause
