@echo off
cls
set list=%~dp0..\list\add.xml
echo %list%
echo ---------------------------------
echo script needs to run in admin mode
echo ---------------------------------
echo.
:menu
echo 1 - basic apps
echo 2 - chocolatey
echo 3 - upgrade apps
echo 4 - exit
echo.

set /p m=type:
if %m%==1 goto gen
if %m%==2 goto fir
if %m%==3 goto upg
if %m%==4 goto eof

:fir
@"%systemroot%\system32\windowspowershell\v1.0\powershell.exe" -noprofile -inputformat none -executionpolicy bypass -command "iex ((new-object system.net.webclient).downloadstring('https://chocolatey.org/install.ps1'))" && set "path=%path%;%allusersprofile%\chocolatey\bin"
choco feature enable -n allowglobalconfirmation
choco upgrade chocolatey
echo ...............................................
echo a restart of the batch file is maybe necessary!!
echo ...............................................
echo ...............................................
goto menu

:upg
choco upgrade all
goto menu

:gen
choco install %list%
goto menu

:eof
