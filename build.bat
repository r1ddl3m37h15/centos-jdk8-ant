@echo on
echo %COMPUTERNAME%
echo %USERDOMAIN% %USERNAME%
echo %CD%

docker build --tag "r1ddl3m37h15/jdk8-ant:latest" .
if ERRORLEVEL 1 exit 1

docker image ls
if ERRORLEVEL 1 exit 1

call test.bat
if ERRORLEVEL 1 exit 1
