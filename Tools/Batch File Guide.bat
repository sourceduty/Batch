REM Batch File Guide

REM Help for users new to batch files, offering a guided, interactive way to learn about .bat file capabilities and syntax.

REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
cls
:menu
echo.
echo --------------------
echo   BATCH FILE GUIDE
echo --------------------
echo.
echo Choose a topic:
echo [1] Introduction to Batch Files
echo [2] Basic Commands
echo [3] Writing and Executing a Batch File
echo [4] Conditional Statements
echo [5] Loop Structures
echo [6] Variables and User Input
echo [7] Functionalities of Batch Files
echo [8] Practical Example
echo [9] Exit
echo.
set /p choice=Enter your choice (1-9): 

if "%choice%"=="1" goto intro
if "%choice%"=="2" goto basicCmds
if "%choice%"=="3" goto writeExec
if "%choice%"=="4" goto conditionals
if "%choice%"=="5" goto loops
if "%choice%"=="6" goto variables
if "%choice%"=="7" goto functionalities
if "%choice%"=="8" goto example
if "%choice%"=="9" goto end

echo Invalid choice, please try again.
goto menu

:intro
echo Batch files are scripts for automating tasks in DOS, Windows, and OS/2 operating systems.
echo They contain a series of commands executed by the command-line interpreter and are saved with a .bat or .cmd extension.
pause
goto menu

:basicCmds
echo Common batch file commands:
echo   ECHO - Displays messages or turns command echoing on/off
echo   REM - Adds comments
echo   PAUSE - Pauses the script and displays a message
echo   SET - Sets or displays environment variables
echo   GOTO - Directs processing to a labeled line
pause
goto menu

:writeExec
echo To create and run a batch file:
echo   1. Open a text editor like Notepad.
echo   2. Write commands line by line.
echo   3. Save the file with a .bat extension, e.g., myscript.bat.
echo   4. Run by double-clicking or via command prompt.
pause
goto menu

:conditionals
echo Conditional statements allow decision making in batch scripts.
echo Commonly used: IF and IF-ELSE structures.
echo Example:
echo   IF EXIST filename.txt (
echo       echo File exists
echo   ) ELSE (
echo       echo File does not exist
echo   )
pause
goto menu

:loops
echo Loops are used for repeating tasks.
echo FOR loops are commonly used.
echo Example:
echo   FOR %%G IN (*.txt) DO echo %%G
echo This lists all .txt files in the current directory.
pause
goto menu

:variables
echo Variables store information that can be used and modified.
echo Example of setting a variable:
echo   SET myvar=Hello
echo To display the variable value, use:
echo   echo %myvar%
echo User input can be captured using SET /P.
pause
goto menu

:functionalities
echo Functionalities of Batch Files:
echo   - Automating routine tasks
echo   - Scripting for administrative functions
echo   - Running multiple commands sequentially
echo   - Conditional execution for decision-making
echo   - Looping for repetitive tasks
echo   - Simplifying complex commands
echo   - Scheduling tasks using task scheduler
echo   - Network and system troubleshooting
echo   - Software installation and deployment
echo   - Interacting with the user through prompts
pause
goto menu

:example
echo Here's a simple interactive example:
echo   @echo off
echo   SET /P user_name=Enter your name: 
echo   echo Hello, %user_name%!
echo   pause
echo This script asks for your name and then greets you.
pause
goto menu

:end
echo Exiting the guide...
pause
exit
