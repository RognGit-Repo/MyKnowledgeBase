@echo off
setlocal
 

REM Strip trailing backslash from %~dp0
for %%I in ("%~dp0.") do set SCRIPT_PATH=%%~fI

cd /d "%SCRIPT_PATH%"

 
REM
cd "%SCRIPT_PATH%" 
curl https://example.com/code-snippet.js >> curl_output
code curl_output
 
endlocal