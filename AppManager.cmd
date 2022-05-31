@echo off

:Menu
Echo ----------------------------------------------------------------
Echo App Manager, select the apps you want to install
Echo Ver: 1.0.0
Echo If you are running Windows 10, make sure to install winget
Echo ----------------------------------------------------------------
Echo 1 - Visual Studio Code
Echo 2 - Notepad++
Echo 3 - Firefox
Echo 4 - Chrome
Echo 5 - Scratch 3
Echo 6 - Turbowarp
Echo 7 - Firefox ESR
echo 8 - Firefox Nightly
echo 9 - Python 3
echo 11 - Ubuntu 20.04 (WSL)
echo 12 - Spotify
echo 13 - PyCharm Community
echo 17 - Chromium (Stable/Sync/Hibbiki)
echo 18 - ExplorerPatcher
echo ------------------------
echo Type "install" to install AppManager
echo ------------------------
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
If %App%==9 GOTO PY3
If %App%==11 GOTO UBUWSL
If %App%==12 GOTO SPOTIFY
If %App%==13 GOTO PYCHARM
If %App%==17 GOTO CHROMIUM
If %App%==18 GOTO EXP
If %App%=="install" GOTO INST
If %App%==Exit GOTO Exit

:INST
Echo Installing...
If exist conf\inst.amcf (
    del conf\inst.amcf
    cmd /c "installer.bat"
    exit
) else (
    echo This software has already been installed.
    pause
    GOTO Menu
)

:VSCODE
echo Installing VSCODE
winget install --silent Microsoft.VisualStudioCode
GOTO Menu

:CHROMIUM
mkdir dl
curl -L https://github.com/Hibbiki/chromium-win64/releases/latest/download/mini_installer.sync.exe -o dl\ChromiumInstaller.exe
dl\ChromiumInstaller.exe
GOTO Menu

:EXP
mkdir dl
curl -L https://github.com/valinet/ExplorerPatcher/releases/latest/download/ep_setup.exe -o dl\ep_setup.exe
cmd.exe /c "dl\ep_setup.exe"
GOTO Menu
  
:NPP
echo Installing NPP
winget install --silent Notepad++.Notepad++
GOTO Menu

:FF
echo Installing Firefox
winget install --silent Mozilla.Firefox
GOTO Menu

:GGL
echo Installing Chrome
winget install --silent Google.Chrome
GOTO Menu

:SCR3
echo Installing Scratch3
winget install --silent MITMediaLab.Scratch.3
GOTO Menu

:TW
echo Installing Turbowarp
winget install --silent GarboMuffin.TurboWarp
GOTO Menu

:FF-ESR
echo Installing Firefox ESR
winget install --silent Mozilla.FirefoxESR
GOTO Menu

:FF-NIGHTLY
echo Installing Firefox Nightly
winget install --silent Mozilla.Firefox.Nightly
GOTO Menu

:PY3
echo Installing Python 3
winget install --silent Python.Python.3
GOTO Menu

:UBUWSL
echo Installing Ubuntu WSL
winget install --silent Canonical.Ubuntu
GOTO Menu

:SPOTIFY
echo Installing Spotify
winget install --silent Spotify.Spotify
GOTO Menu

:PYCHARM
echo Installing PyCharm
winget install --silent JetBrains.PyCharm.Community
GOTO Menu

:Custom
echo Installing requested app.
Set /P SEL=STRING: 
winget search %SEL%

:Exit
exit
