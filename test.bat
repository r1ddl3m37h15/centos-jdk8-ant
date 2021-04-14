@echo on

@rem
@rem run ./tests/tests.bat in the container
@rem

docker run --rm -v "%CD%\test":/usr/src/myapp -w /usr/src/myapp r1ddl3m37h15/jdk8-ant:latest bash ./tests.sh
@if ERRORLEVEL 1 exit /b 1

@echo ---------
@echo -- pass--
@echo ---------
@exit /b 0