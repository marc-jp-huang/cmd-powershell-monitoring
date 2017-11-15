tasklist /FI "IMAGENAME eq Tomcat7.exe" | find /C /I ".exe" > NUL
if %errorlevel%==0 goto :running

start "" powershell.exe -command "& C:\your\scripts\path\tomcatDown.ps1"
goto :eof

:running
start "" powershell.exe -command "& C:\your\scripts\path\tomcatRun.ps1"
:eof
exit