SET month=%DATE:~6,4%%DATE:~3,2%
SET backuppath=E:\Fortigate Backups
SET scriptpath=C:\FortigateBackups

LogArchive.bat  2>&1 |  mtee  %scriptpath%\archive\Log_Archive_%month%.log

zipit.exe %scriptpath%\archive\Log_Archive_%month%.zip  %scriptpath%\archive\Log_Archive_%month%.log
del  %scriptpath%\archive\Log_Archive_%month%.log
echo Complete
EXIT