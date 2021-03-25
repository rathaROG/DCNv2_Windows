@ECHO OFF

REM Command file build and install DCNv2

ECHO. 
ECHO ========================================================
ECHO Important:
ECHO --------------------------------------------------------
ECHO Make sure you already added the correct path of 'cl.exe'
ECHO of VS2019 in system path variable before running this.
ECHO ========================================================
ECHO. 

ECHO DCNv2 will be built an installed after you press any key

PAUSE

python setup.py build develop

PAUSE
