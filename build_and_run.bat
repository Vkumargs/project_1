@echo off
setlocal

set BUILD_DIR=build
set EXECUTABLE_NAME=project_one_app.exe
set EXECUTABLE_PATH=%BUILD_DIR%\Debug\%EXECUTABLE_NAME%

echo --- Build and Run Script ---

REM Step 1: Build the project by calling the existing build script.
echo [INFO] Calling build script...
call .\build.bat

REM Check if the build was successful
if %errorlevel% neq 0 (
    echo [ERROR] Build failed. Aborting run.
    exit /b %errorlevel%
)

REM Step 2: Run the executable if the build was successful.
echo [INFO] Running executable: %EXECUTABLE_PATH%
echo ----------------------------------------
echo --------------- START  -----------------
echo ----------------------------------------

%EXECUTABLE_PATH%

echo ----------------------------------------   
echo ---------------  END   -----------------
echo ----------------------------------------