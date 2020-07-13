@echo off

:output
netsh interface ipv4 show config
echo.
echo --------------------------------------------------------------------------------
set /p ADAPTER= Adapter: 
set /p SUBNET_MASK= Subnet Mask: 
set /p DEFAULT_GATEWAY= Default Gateway: 
echo.
set /p NEW_IP= New IPv4: 
netsh interface ip set address name = "%ADAPTER%" static %NEW_IP% %SUBNET_MASK% %DEFAULT_GATEWAY%
echo RETURNED: %ERRORLEVEL%
ipconfig