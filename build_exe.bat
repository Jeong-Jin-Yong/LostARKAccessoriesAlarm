@echo off
setlocal

cd /d "%~dp0"

where py >nul 2>nul
if %errorlevel%==0 (
    set PY_CMD=py
) else (
    set PY_CMD=python
)

%PY_CMD% -m pip install --upgrade pip
if not %errorlevel%==0 goto :fail

%PY_CMD% -m pip install pyinstaller
if not %errorlevel%==0 goto :fail

if exist "dist\LostArkWatcher.exe" (
    echo Stopping running LostArkWatcher.exe before build...
    for /L %%I in (1,1,3) do (
        if exist "dist\LostArkWatcher.exe" (
            taskkill /IM LostArkWatcher.exe /F >nul 2>nul
            del /F /Q "dist\LostArkWatcher.exe" >nul 2>nul
            if exist "dist\LostArkWatcher.exe" ping 127.0.0.1 -n 2 >nul
        )
    )
    if exist "dist\LostArkWatcher.exe" (
        echo.
        echo Could not replace dist\LostArkWatcher.exe because it is still locked.
        echo Close any running LostArkWatcher.exe process and try again.
        goto :fail
    )
)

%PY_CMD% -m PyInstaller --noconfirm --clean --windowed --onefile --name LostArkWatcher watcher.py
if not %errorlevel%==0 goto :fail

echo.
echo Build complete.
echo EXE path: dist\LostArkWatcher.exe
goto :end

:fail
echo.
echo Build failed.
pause
exit /b 1

:end
endlocal
exit /b 0
