@echo off
SET month=%DATE:~6,4%%DATE:~3,2%
SET backuppath=E:\Fortigate Backups
SET scriptpath=C:\FortigateBackups
echo Starting Monthly Move Log

echo.
echo Zipping Logs

zipit.exe Log_Archive_%month%.zip  %scriptpath%\logs

echo.
echo Moving Zip File

move Log_Archive_%month%.zip %scriptpath%\archive

echo.
echo Removing Old Files

rmdir /s /q %scriptpath%\logs
mkdir %scriptpath%\logs

echo Complete
