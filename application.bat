@echo off
REM Windows batch file
REM 
REM This is an example application for doing deployment validation.
REM This is a simple batch file to be deployed to
REM * Windows
REM
SET nodename=%computername%
SET arch=%processor_architecture%
SET datetime="%date% %time%
echo Hello World from Distelli.
echo You have successfully deployed a simple application script.
echo Server: %nodename%
echo Server Architecture: %arch%
echo Server Time: %datetime%
echo Manifest Environment Variable: %EXAMPLE%
echo.
powershell -command "Start-Sleep -s 10"
