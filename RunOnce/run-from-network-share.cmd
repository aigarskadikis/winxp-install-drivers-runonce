@echo off
if exist q: net use q: /delete /yes
net use q: \\path\to\drivers
q:
installdrv.cmd
