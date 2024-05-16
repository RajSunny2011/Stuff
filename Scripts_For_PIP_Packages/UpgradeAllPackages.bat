@echo off
echo Upgrading all pip packages...

REM Writes all installed packages to "requirements.txt"
REM Will overwrite existing "requirements.txt"
pip freeze > requirements.txt

REM Upgrades all packages from "requirements.txt"
for /F "tokens=* delims= " %%i in (requirements.txt) do (
    echo Upgrading %%i...
    pip install --upgrade %%i
)

echo All pip packages upgraded.
pause