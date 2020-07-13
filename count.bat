@echo off
Setlocal DisableDelayedExpansion
set /A "NUM"="0"
Setlocal EnableDelayedExpansion
for /F "tokens=*" %%d in ('dir /B /A-D %1') do (
set /A "NUM"="!NUM! + 1"
echo !NUM!. %%d
)