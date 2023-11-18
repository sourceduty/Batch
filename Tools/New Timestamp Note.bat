REM New Timestamp Note

REM 1. Set the file name to "timestamp.txt".
REM 2. Capture the current date and time.
REM 3. Write "Current Date and Time: [current date and time]" into "timestamp.txt".
REM 4. Open "timestamp.txt" in Notepad.

REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
setlocal

REM Define the file name
set filename=timestamp.txt

REM Get the current date and time
set currentDateTime=%date% %time%

REM Write the current date and time into the file
echo Current Date and Time: %currentDateTime% > %filename%

REM Open the file in Notepad
notepad %filename%

