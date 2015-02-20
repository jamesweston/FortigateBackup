SET isodt=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%
SET backuppath=E:\Fortigate Backups
SET scriptpath=C:\FortigateBackups

MonthlyMove.bat  2>&1 |  mtee  %scriptpath%\logs\%isodt%_MonthlyMove.log

echo Complete
EXIT