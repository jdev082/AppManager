@echo off

:Menu
echo If winget isn't installed, this script will not work
Echo ----------------------------------------------------------------
Echo App Manager, select the apps you want to install
Echo ----------------------------------------------------------------
Echo 1 - Visual Studio Code
Echo 2 - Notepad++
Echo 3 - Firefox
Echo 4 - Chrome

Set /P App=Selection #
If %App%=="" GOTO Menu
If %App%==1 GOTO VSCODE
If %App%==2 GOTO NPP
If %App%==3 GOTO FF
If %App%==4 GOTO GGL

:VSCODE
echo Installing VSCODE
winget install -e Microsoft.VisualStudioCode
GOTO Menu

:NPP
echo Installing NPP
winget install -e Notepad++.Notepad++
GOTO Menu

:FF
echo Installing Firefox
winget install -e Mozilla.Firefox
GOTO Menu

:GGL
echo Installing Chrome
winget install -e Google.Chrome
GOTO Menu