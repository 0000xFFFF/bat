@echo off
for /F "tokens=1-2" %%A in ('tasklist ^| findstr /I /C:"%1"') do ( taskkill /F /IM "%%B" >nul 2>nul && echo ^> [%%A] [%%B] )