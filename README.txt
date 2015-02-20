Fortigate Backup Readme
=======================

1. Introduction
2. Use
3. Adding New Clients

1. Introduction
---------------
This script has been designed to create backups of all of out client Fortigates. This script is should be scheduled to run at 18:00 every night.

2. Use
------
This script has 8 parts.
	1. plink.exe - This is windows SSH client used to connect to the Fortigates
	2. fortibackup.bat - This is the script that runs the backups and stores them in SET backuppath=E:\Fortigate Backups in the file
	3. RunBackup.bat - This is the controller script that fires off the backup and then places the files into the relevant folders (dated)
	4. MonthBackup.bat - This moves all the daily backup folders to the MonthlyBackup folder and runs last day of every month
	5. mtee.exe - This is the log generator that outputs the script details
	6. Zipit.exe & Ionic.Zip.dll - This is the command-line Zip utility that makes the archive files
	7. LogArchive.bat - This uses the Zip utility to compress the log files after 1 month
	8. *_log.bat - These files are used to branch a mtee instance to facilitate logs.
	
	Remember to Change the "SET backuppath=E:\Fortigate Backups" and "SET scriptpath=C:\FortigateBackups" at the top of every BAT file

	
3. Adding New Clients
---------------------
When adding new clients please view the syntax of current clients and use this as a basis.
You will only need to change data in fortibackup.bat!

	1. For FTP - plink -batch -pw <FGPassw0rd> -ssh <FGUsername@FGIPaddress>  "execute backup config ftp Compayname_Sitename_FortigateModel_%isodt%.conf <FTPAddress>:21 <FTPUsername> <FTPPassword>"
	2. For USB - plink -batch -pw <FGPassw0rd> -ssh <FGUsername@FGIPaddress>  "execute backup config usb fgt_system.conf"
	