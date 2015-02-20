@echo on
SET isodt=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%
SET backuppath=E:\Fortigate Backups
SET scriptpath=C:\FortigateBackups
echo Starting Backup Job
echo.
START "Backup Script" /wait %scriptpath%\fortibackup_log.bat
echo.
echo Making Directory
cd /D "%backuppath%"
md "%isodt%"
echo.
echo Moving Files
echo.
move "*%isodt%.conf" "%isodt%"
echo.
echo Complete
