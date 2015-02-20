SET isodt=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%
SET backuppath=E:\Fortigate Backups
SET scriptpath=C:\FortigateBackups

%scriptpath%\RunBackup.bat  |  mtee  %scriptpath%\logs\%isodt%_RunBackup.log

echo Complete