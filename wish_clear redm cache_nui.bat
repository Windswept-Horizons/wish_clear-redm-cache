:: NAME: Clear RedM NUI cache.
:: AUTHOR: Coyote
:: DATE: 2024-10-24

@echo off
color 0a
cls
:MENU
echo What do you want to do?
echo.
echo 1- Clear the RedM cache.
echo 2- Clear the RedM NUI. 
echo 3- Close
echo.
set choice=3
set /p choice=
echo %choice%
if %choice%==1 goto 1
if %choice%==2 goto 2
if %choice%==3 goto 3
goto :choice
echo Invalid Choice

:1
echo Clearing RedM cache...
TIMEOUT /T 3
RMDIR /S /Q %LOCALAPPDATA%\RedM\RedM.app\data\server-cache
RMDIR /S /Q %LOCALAPPDATA%\RedM\RedM.app\data\server-cache-priv
exit

:2
echo Clearing RedM NUI cache...
TIMEOUT /T 3
RMDIR /S /Q %LOCALAPPDATA%\RedM\RedM.app\data\cache
RMDIR /S /Q %LOCALAPPDATA%\RedM\RedM.app\data\nui-storage
RMDIR /S /Q %LOCALAPPDATA%\RedM\RedM.app\data\server-cache
RMDIR /S /Q %LOCALAPPDATA%\RedM\RedM.app\data\server-cache-priv
exit

:3
echo Closing...
TIMEOUT /T 3
exit
