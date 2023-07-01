:: Updated by rathaROG July 01, 2023
@ECHO OFF
ECHO =================================================================
ECHO.
ECHO Important:
ECHO ----------
ECHO.
ECHO Recommend using the new 'make_develop.bat' as it can find and set
ECHO the path of Microsoft Visual Studio automatically.
ECHO.
ECHO Or only run this 'make_old.bat' under 'developer command prompt'.
ECHO Check 'README.md' or go to GitHub for more details.
ECHO.
ECHO =================================================================
ECHO. 
ECHO DCNv2 will be built after you press any key
PAUSE
ECHO.
python setup.py build develop
PAUSE
