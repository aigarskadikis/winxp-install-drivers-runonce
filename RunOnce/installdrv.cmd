@echo off
if exist "%SystemRoot%\SysWOW64" (goto :x64) else (goto :x86)

:x86
"%~dp0dpinst_x86.exe"
goto Finish

:x64
"%~dp0dpinst_x64.exe"
goto Finish

:Finish

shutdown -s -t 180
