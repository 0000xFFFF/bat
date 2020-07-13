@echo off
if [%1]==[] goto skip
cd /d %1 2>nul
for /f "tokens=*" %%a in ('dir /b ^| findstr /I /C:"%1"') do ( cd /d "%%a" 2>nul )
:skip