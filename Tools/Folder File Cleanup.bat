REM Folder File Cleanup

REM Check a folder for additional files and move them to a new folder named "Folder Cleanup".

REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
setlocal enabledelayedexpansion

REM The path of the directory to check
set "DIRECTORY=%~dp0"

REM Create the Folder Cleanup directory if it does not exist
if not exist "%DIRECTORY%Folder Cleanup\" mkdir "%DIRECTORY%Folder Cleanup"

REM Move all files except the batch file itself to the Folder Cleanup directory
for %%F in ("%DIRECTORY%*") do (
  if "%%~fF" neq "%~f0" (
    move "%%F" "%DIRECTORY%Folder Cleanup"
  )
)
