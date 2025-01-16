@echo off
setlocal

:prompt
set /p userInput=Do you want to activate the fork bomb? (y/n): 

if /i "%userInput%"=="y" goto forkbomb
if /i "%userInput%"=="n" goto end
echo Invalid input.
goto prompt

:forkbomb
:s
start %0
goto :s

:end
echo Fork bomb not activated.
