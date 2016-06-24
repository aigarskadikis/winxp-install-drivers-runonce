@echo off

Title Driver Package Installer

echo  Installing: Driver deployment...
echo  ====================================

if exist "%SystemRoot%\SysWOW64" (goto :x64) else (goto :x86)

:x86
echo.
echo  Installing..
"%~dp0dpinst_x86.exe" /c
goto Finish

:x64
echo.
echo  Installing..
"%~dp0dpinst_x64.exe" /c
goto Finish

:Finish
echo.
echo  Installed.
echo.
echo.

REM The /c parameter simply indicates that all output should go to the console instead of a log file.
 
rem notepad %systemroot%\DPINST.LOG
shutdown -s -t 120
