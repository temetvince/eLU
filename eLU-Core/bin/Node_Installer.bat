@echo off

echo Installing Node locally.

setlocal

:: Define the URL and the destination file and the destination folder
set "url=https://nodejs.org/dist/v20.14.0/node-v20.14.0-win-x64.zip"
set "zipDir=.\eLU-Core\downloads"
set "zipfile=%zipDir%\nodejs.zip"
set "destination=.\eLU-Core\runtime\nodejs"

:: Check if the destination folder exists
if exist "%destination%" (
    :: Check if the destination folder is empty
    for /f "delims=" %%i in ('dir "%destination%" /b /a') do (
        echo The destination folder is not empty.
        exit /b 0
    )
)

if not exist "%zipDir%" mkdir "%zipDir%"

:: Use PowerShell to download the file
PowerShell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%zipfile%'"
if %errorlevel% neq 0 (
    echo Error: Download failed.
    pause
    exit /b 1
)

:: Use PowerShell to unzip the file
PowerShell -Command "Expand-Archive -Path '%zipfile%' -DestinationPath '%destination%' -Force"
if %errorlevel% neq 0 (
    echo Error: Unzipping failed.
    pause
    exit /b 1
)

:: Copy the contents inside the single subdirectory found inside the destination folder
:: to the destination folder itself and delete the subdirectory
for /d %%i in ("%destination%\*") do (
    xcopy "%%i\*" "%destination%\" /s /e /y
    rmdir /S /Q "%%i"
)

:: Clean up
del /Q "%zipfile%"

endlocal

echo .
echo Installing complete.
