REM System Info

REM 1. Gathers general system information using systeminfo.
REM 2. Retrieves disk space information with wmic.
REM 3. Gets network configuration details using ipconfig /all.
REM 4. Lists currently running processes with tasklist.
REM 5. Saves all this information into a file named system_info.txt.
REM 6. Optionally, you can uncomment the last line to open the text file automatically after running the script.
 
REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
echo Gathering system information...
echo Please wait...

echo System Information > system_info.txt
echo --------------------------- >> system_info.txt
systeminfo >> system_info.txt

echo. >> system_info.txt
echo Disk Space Information >> system_info.txt
echo --------------------------- >> system_info.txt
wmic logicaldisk get name,freespace,size >> system_info.txt

echo. >> system_info.txt
echo Network Configuration >> system_info.txt
echo --------------------------- >> system_info.txt
ipconfig /all >> system_info.txt

echo. >> system_info.txt
echo Process List >> system_info.txt
echo --------------------------- >> system_info.txt
tasklist >> system_info.txt

echo Information gathered successfully.
echo The information has been saved in system_info.txt
pause

REM Optional: Open the text file automatically
REM notepad system_info.txt
