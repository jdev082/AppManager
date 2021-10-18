@echo off

:Menu
echo If winget isn't installed, this script will not work
echo If on Windows 11 (if you aren't close the script it wont work) just run the updates shown in the ms store then run the script
Echo ----------------------------------------------------------------
Echo App Manager, select the apps you want to install
Echo Ver: 21.10.18.2188
Echo: If you are running Windows 10, close the script. It won't work.
Echo ----------------------------------------------------------------
Echo 1 - Visual Studio Code
Echo 2 - Notepad++
Echo 3 - Firefox
Echo 4 - Chrome
Echo 5 - Scratch 3
Echo 6 - Turbowarp
Echo 7 - Firefox ESR
echo 8 - Firefox Nightly
echo Exit - Type Exit to exit the script

Set /P App=Selection #
If %App%=="" GOTO Menu
If %App%==1 GOTO VSCODE
If %App%==2 GOTO NPP
If %App%==3 GOTO FF
If %App%==4 GOTO GGL
If %App%==5 GOTO SCR3
If %App%==6 GOTO TW
If %App%==7 GOTO FF-ESR
If %App%==8 GOTO FF-NIGHTLY
If %App%==Exit GOTO Exit

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

:SCR3
echo Installing Scratch3
winget install -e MITMediaLab.Scratch.3
GOTO Menu

:TW
echo Installing Turbowarp
winget install -e GarboMuffin.TurboWarp
GOTO Menu

:FF-ESR
echo Installing Firefox ESR
winget install -e Mozilla.FirefoxESR
GOTO Menu

:FF-NIGHTLY
echo Installing Firefox Nightly
winget install -e Mozilla.Firefox.Nightly
GOTO Menu

:Exit
exit