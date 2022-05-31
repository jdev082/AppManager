
@echo off
set LOGFILE=log.txt
call :LOG > %LOGFILE%

:LOG
mkdir "%AppData%\JaydenDev\AppManager"
copy AppManager.cmd "%AppData%\JaydenDev\AppManager"
copy appmgr.lnk "%AppData%\Microsoft\Windows\Start Menu\Programs"