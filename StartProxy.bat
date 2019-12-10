@echo off

set /p TARGET_HOST="Please enter the target url for this proxy (e.g. http://127.0.0.1): "
FOR /F "tokens=4 delims= " %%i in ('route print ^| find " 0.0.0.0"') do set LOCAL_IP=%%i

echo.
echo.
echo ==== Creating certificate ====
echo Your IP Address is: %LOCAL_IP%
echo.

mkcert %LOCAL_IP%

echo.
echo.
echo ======= Starting proxy =======
echo Listening at: https://%LOCAL_IP%
echo.

ssl-proxy.exe -cert %LOCAL_IP%.pem -key %LOCAL_IP%-key.pem -redirectHTTP -to %TARGET_HOST% -from %LOCAL_IP%:443