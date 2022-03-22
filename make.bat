@ECHO OFF

REM Command file: Build and install DCNv2

ECHO. 
ECHO =========================================================
ECHO Important:
ECHO ---------------------------------------------------------
ECHO Make sure you already added the correct path of 'cl.exe'
ECHO of VS2019 in system path variable before running this.
ECHO =========================================================
ECHO. 

ECHO DCNv2 will be built and installed after you press any key
ECHO.

PAUSE

python setup.py build develop

PAUSE
