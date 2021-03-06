@echo OFF

set dir=%~dp0
echo dir: %dir%
set dir=%dir:~0,-1%
cd %dir%

set SCRIPTPATH=%CD%

cd ..
cd ..
set ROOT=%CD%
echo ROOT=%ROOT%
cd %SCRIPTPATH%

REM defining requirements
set SOME_REQUIRED_ENVIRONMENT_VARIABLE=%SCRIPTPATH%
set SOME_REQUIRED_ENVIRONMENT_VARIABLE2=%ROOT%\scripts
set OPEN_METHOD=start
set PYTHON_EXECUTABLE=python.exe
set __SLASH__=\

REM launching electron
cd %SCRIPTPATH%

if not exist %SCRIPTPATH%\ihm_basic.json (
    echo current directory must be where the ihm/json file is located
    exit 1
)

set IHMFILE=%SCRIPTPATH%\ihm_basic.json

REM cd %ROOT% && npm start
cd %ROOT% && electron .
