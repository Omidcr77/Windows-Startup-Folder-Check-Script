@echo off
set "folderPath=%USERPROFILE%\Desktop\imhere"

timeout /t 20 /nobreak >nul

if not exist "%folderPath%" (
    shutdown /s /t 0
) else (
    return
)
 
