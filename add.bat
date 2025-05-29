@echo off
setlocal
 

REM Strip trailing backslash from %~dp0
for %%I in ("%~dp0.") do set SCRIPT_PATH=%%~fI

cd /d "%SCRIPT_PATH%"

 
REM

copy template.html sandbox.html

cd /d "%SCRIPT_PATH%" && code sandbox.html
 
endlocal