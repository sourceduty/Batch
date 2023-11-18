REM Random Character Game

REM A quick-response random character game.

REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
setlocal enabledelayedexpansion

:gameStart
cls
echo Welcome to the Quick Response Game!
echo Respond with the shown character.
echo Press any key to start...
pause > nul

:nextCharacter
set /a "charType=%random% %% 2"

if "!charType!"=="0" (
    REM Alphabet (A-Z)
    set /a "charOffset=%random% %% 26"
    call :getLetter !charOffset!
) else (
    REM Numbers (0-9)
    set /a "character=%random% %% 10"
)

cls
echo Respond with the character: !character!

set /p userInput=Enter your response: 

if /i "!userInput!"=="!character!" (
    echo Correct!
) else (
    echo Incorrect!
)

echo.
echo Press any key for next character or CTRL+C to exit...
pause > nul
goto nextCharacter

:getLetter
set letters=ABCDEFGHIJKLMNOPQRSTUVWXYZ
set character=!letters:~%1,1!
goto :eof
