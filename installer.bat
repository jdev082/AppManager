
@echo off
set LOGFILE=log.txt
call :LOG > %LOGFILE%

:LOG
mkdir "%AppData%\Local\JaydenDev\AppManager"
copy AppManager.cmd "%AppData%\Local\JaydenDev\AppManager"
copy appmgr.lnk "C:\Users\wills\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"