@echo off
setlocal

:: Konfigurationsabschnitt
set SERVER=www.loris.bplaced.net
set PORT=21
set USERNAME=loris.internett@gmail.com
set PASSWORD=niger1312
set LOCAL_PATH="C:\Users\Loris TBZ\OneDrive - TBZ\Dokumente\GitHub\M293_Projekt_Loris_Dio\Übungen\Loris\H2"
set REMOTE_PATH=/htdocs

:: Skriptabschnitt
echo open %SERVER% %PORT% > ftpcmd.dat
echo user %USERNAME% %PASSWORD% >> ftpcmd.dat
echo binary >> ftpcmd.dat
echo lcd %LOCAL_PATH% >> ftpcmd.dat
echo cd %REMOTE_PATH% >> ftpcmd.dat
echo mput * >> ftpcmd.dat
echo bye >> ftpcmd.dat

ftp -s:ftpcmd.dat

del ftpcmd.dat

endlocal
