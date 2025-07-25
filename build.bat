@echo off
setlocal

REM --- Configuration ---
set BUILD_DIR=build
set CMAKE_GENERATOR="Visual Studio 17 2022"

echo --- Build Script Started ---

REM Create a build directory if it doesn't exist
if not exist %BUILD_DIR% (
    echo [INFO] Creating build directory: %BUILD_DIR%
    mkdir %BUILD_DIR%
)

REM Configure the project using CMake
echo [INFO] Configuring project...
cmake -S . -B %BUILD_DIR% -G %CMAKE_GENERATOR%

REM Check if CMake configuration was successful
if %errorlevel% neq 0 (
    echo [ERROR] CMake configuration failed!
    exit /b %errorlevel%
)

REM Build the project
echo [INFO] Building project...
cmake --build %BUILD_DIR%

echo [SUCCESS] Build finished. Executable is in %BUILD_DIR%\Debug\