@echo off

setlocal

call "%~dp0eLU-Core\bin\Node_Installer.bat"

set "NODE_PATH=%~dp0\eLU-Core\runtime\nodejs"
set "PATH=%~dp0nodejs;%PATH%"

cd /d "%~dp0eLU-Core\src"
call npm install && call npm start

endlocal

pause
