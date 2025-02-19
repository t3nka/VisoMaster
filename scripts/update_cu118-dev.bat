@echo off
call scripts\setenv.bat
"%GIT_EXECUTABLE%" fetch origin dev
"%GIT_EXECUTABLE%" reset --hard origin/dev
"%PYTHON_EXECUTABLE%" -m pip install -r requirements_cu118.txt --default-timeout 100
"%PYTHON_EXECUTABLE%" download_models.py