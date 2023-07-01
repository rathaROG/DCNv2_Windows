:: Wrote by rathaROG July 01, 2023
@ECHO OFF
SETLOCAL enabledelayedexpansion
ECHO =============================================================================
ECHO =     Build in develop mode for debugging or creating 3rd party library     =
ECHO =============================================================================
ECHO. 
SET "vs_root_dir=C:\Program Files (x86)\Microsoft Visual Studio\"
SET "vc_dir=NAN"
SET "year=NAN"
SET "edition=NAN"
IF NOT EXIST "%vs_root_dir%" (
    ECHO Could not find your Microsoft Visual Studio!
    ECHO. 
    GOTO MNSETVS
) ELSE (
    IF EXIST "%vs_root_dir%2017\" SET "year=2017"
    IF EXIST "%vs_root_dir%2019\" SET "year=2019"
    IF EXIST "%vs_root_dir%2022\" SET "year=2022"
)
SET "year=!year!"
IF "%year%" EQU NAN (
    ECHO Could not find your Microsoft Visual Studio!
    ECHO. 
    GOTO MNSETVS
) ELSE (
    IF EXIST "%vs_root_dir%%year%\Community\" SET "edition=Community"
    IF EXIST "%vs_root_dir%%year%\Professional\" SET "edition=Professional"
    IF EXIST "%vs_root_dir%%year%\Enterprise\" SET "edition=Enterprise"
)
SET "edition=!edition!"
SET "vc_dir=%vs_root_dir%%year%\%edition%\VC\Auxiliary\Build\"
IF "%vc_dir%" EQU NAN (
    ECHO -----------------------------------------------------------------------------
    ECHO Could not find Microsoft Visual Studio C++ compiler!
    ECHO Now let's set it manually!
    ECHO -----------------------------------------------------------------------------
    GOTO MNSETVS
) ELSE (
    ECHO -----------------------------------------------------------------------------
    ECHO Found Microsoft Visual Studio C++ compiler:
    ECHO Microsoft Visual Studio %year% %edition% %PROCESSOR_ARCHITECTURE%
    ECHO -----------------------------------------------------------------------------
    GOTO BUIDNOW
)
:MNSETVS
ECHO Manually set your VS C++ compiler:
:SETVS
ECHO.
ECHO Set ROOT=YOUR_PATH\Microsoft Visual Studio
ECHO Press 'Enter' to set ROOT=C:\Program Files (x86)\Microsoft Visual Studio\
SET /P "vs_root_dir=ROOT=" || SET "vs_root_dir=C:\Program Files (x86)\Microsoft Visual Studio\"
IF NOT "%vs_root_dir:~-1%"=="\" SET "vs_root_dir=%vs_root_dir%\"
ECHO.
ECHO Set YEAR=2017 or YEAR=2019 or YEAR=2022
ECHO Press 'Enter' to set YEAR=2019
SET /P "year=YEAR=" || SET "year=2019"
ECHO. 
ECHO Set EDITION=Community, or EDITION=Professional, or EDITION=Enterprise
ECHO Press 'Enter' to set EDITION=Enterprise
SET /P "edition=EDITION=" || SET "edition=Enterprise"
ECHO.
SET "vc_dir=%vs_root_dir%%year%\%edition%\VC\Auxiliary\Build\"
IF NOT EXIST "%vc_dir%" ( 
    ECHO -----------------------------------------------------------------------------
    ECHO Could not find Microsoft Visual Studio C++ compiler!
    ECHO Let's try again!
    ECHO -----------------------------------------------------------------------------
    GOTO SETVS
) ELSE (
    ECHO -----------------------------------------------------------------------------
    ECHO Found Microsoft Visual Studio C++ compiler:
    ECHO Microsoft Visual Studio %year% %edition% %PROCESSOR_ARCHITECTURE%
    ECHO -----------------------------------------------------------------------------
    GOTO BUIDNOW
)
:BUIDNOW
ECHO.
SET "DISTUTILS_USE_SDK=1"
IF /I "%processor_architecture%"=="AMD64" CALL "%vc_dir%vcvars64.bat" >NUL
IF /I "%processor_architecture%"=="x86" CALL "%vc_dir%vcvars32.bat" >NUL
ECHO DCNv2 '_ext' will be built after you press any key
PAUSE
ECHO.
python setup.py build develop
PAUSE