@echo off

:: ********* DO NOT EDIT BELOW THIS LINE ********

SET isodt=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%

:: ********* DO NOT EDIT ABOVE THIS LINE ********

echo ***************************
echo Company Name -  Sitename
plink -batch -pw FGPassw0rd -ssh FGUsername@FGIPaddress  "execute backup config ftp Compayname_Sitename_FortigateModel_%isodt%.conf FTPAddress:21 FTPUsername FTPPassword"
echo.
echo.
echo ***************************
echo.
echo ***************************
echo Company Name -  Sitename USB
plink -batch -pw FGPassw0rd -ssh FGUsername@FGIPaddress  "execute backup config usb fgt_system.conf"
echo.
echo.
echo ***************************
echo.
echo ***************************
echo.
echo Complete
EXIT