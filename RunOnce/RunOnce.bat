@echo off
set d=%systemdrive%\swsetup
set path=%path%;%~dp0
setlocal EnableDelayedExpansion
dir /b "%~dp0*.7z" > nul 2>&1
if !errorlevel!==0 (
echo Drivers
if not exist "%d%" md "%d%"
xcopy /i /c /r /y "%~dp0dpinst.xml" "%d%" > nul 2>&1
xcopy /i /c /r /y "%~dp0dpinst_x64.exe" "%d%" > nul 2>&1
xcopy /i /c /r /y "%~dp0dpinst_x86.exe" "%d%" > nul 2>&1
xcopy /i /c /r /y "%~dp0installdrv.cmd" "%d%" > nul 2>&1
for /f %%a in ('dir /b "%~dp0*.7z"') do (
7z x "%~dp0%%a" -o"%d%\%%a" -y > nul 2>&1
)
"%d%\installdrv.cmd"
) else "%~dp0installdrv.cmd"
endlocal
