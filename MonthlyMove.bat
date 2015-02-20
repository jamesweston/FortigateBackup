@echo off
SET month=%DATE:~6,4%%DATE:~3,2%
SET backuppath=E:\Fortigate Backups
SET scriptpath=C:\FortigateBackups

echo Starting Monthly Move
echo.
echo Making Directory
cd /D "%backuppath%\MonthlyBackups"
md "%month%"
echo.
echo Moving Files
cd ..
echo.
for /d %%X in (%month%*) do move %%X "%backuppath%\MonthlyBackups\%month%"\%%~nX
echo.
echo Complete
EXIT