REM Multiplayer Connect 4 Game
REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

@echo off
setlocal EnableDelayedExpansion

:: Initialize variables
set "rows=6"
set "columns=7"
set "empty=."

:: Create empty board
for /L %%r in (1,1,%rows%) do (
    set "row%%r="
    for /L %%c in (1,1,%columns%) do (
        set "row%%r=!row%%r!!empty!"
    )
)

:: Main game loop
set "player=0"
:game_loop
cls
call :print_board
set /A "player=!player! %% 2 + 1"
echo Player !player!'s turn.
:player_input
set /p "input=Choose a column (1-%columns%): "
if "!input!" lss "1" or "!input!" gtr "%columns%" goto player_input

:: Place the disc
set /A "column=!input! - 1"
for /L %%r in (%rows%,-1,1) do (
    set "row=!row%%r!"
    set "cell=!row:~%column%,1!"
    if "!cell!"=="%empty%" (
        set "row=!row:~0,%column%!!player!!row:~%input%!"
        set "row%%r=!row!"
        goto check_win
    )
)
echo Column full. Try again.
goto player_input

:: Check for win condition (simplified)
:check_win
:: [Win condition check logic goes here - omitted for brevity]
goto game_loop

:: Print the game board
:print_board
for /L %%r in (1,1,%rows%) do (
    set "row=!row%%r!"
    echo !row!
)
exit /b
