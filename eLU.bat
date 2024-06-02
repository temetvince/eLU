@echo off

setlocal

REM Load environment variables from .env file
for /f "tokens=1,2 delims==" %%a in ('type "%~dp0eLU-Core\src\.env"') do (
    if "%%a"=="NODE_ENV" set NODE_ENV=%%b
)

REM Call the Node Installer script
call "%~dp0eLU-Core\bin\Node_Installer.bat"

REM Set the NODE_PATH and PATH environment variables
set "NODE_PATH=%~dp0\eLU-Core\runtime\nodejs"
set "PATH=%NODE_PATH%;%PATH%"

REM Change directory to eLU-Core\src and run npm install
cd /d "%~dp0eLU-Core\src"
if errorlevel 1 (
    echo Failed to change directory.
    endlocal
    pause
    exit /b 1
)

call npm install
if errorlevel 1 (
    echo npm install failed.
    endlocal
    pause
    exit /b 1
)

REM Run the appropriate npm command based on the NODE_ENV
if "%NODE_ENV%"=="production" (
    call npm start
) else if "%NODE_ENV%"=="development" (
    call npm run dev
) else (
    echo NODE_ENV is not set or is invalid.
    endlocal
    pause
    exit /b 1
)

if errorlevel 1 (
    echo npm command failed.
    endlocal
    pause
    exit /b 1
)

endlocal
pause
