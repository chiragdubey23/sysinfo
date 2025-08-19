@echo off
:menu
cls
echo =============================================
echo    SYSTEM TOOL MENU
echo =============================================
echo 1. Show System Info
echo 2. Open Google
echo 3. List Installed Programs
echo 4. Github
echo 5. Exit
echo =============================================
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto sysinfo
if "%choice%"=="2" goto openweb
if "%choice%"=="3" goto programs
if "%choice%"=="4" goto github
if "%choice%"=="5" exit

:sysinfo
echo System Info:
ver
ipconfig | findstr "IPv4"
pause
goto menu

:openweb
start "" "https://google.com"
goto menu

:github
start "" "https://github.com/chiragdubey23"
goto menu

:programs
wmic product get name, version
pause
goto menu
