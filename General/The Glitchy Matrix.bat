REM The Glitchy Matrix
REM Copyright (C) 2023, Sourceduty
REM ℹ️ This software is free and open-source; anyone can redistribute it and/or modify it.

::Matrix
@echo OFF
Title The Glitchy Matrix

:Matrix
call :randomColor
echo 0 1 0 1 1 1 0 0 1 0 1 0 0 0 1 1 0 1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0 1 0 0 1 1 0 0 1 0 1
echo 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 1 1 1 1 0 0 1 0 0
echo 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 O 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 O 1 1 1
echo 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 1 1 1 1 0 0 1 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 1 1 1 1 0 0 1 0 0
echo 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 O 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0 O 1 1 1 
goto :Matrix

:randomColor
set /a "color=0x%random% %% 0xF"
if %color% lss 10 (
    set color=0%color%
)
color %color%
goto :eof
