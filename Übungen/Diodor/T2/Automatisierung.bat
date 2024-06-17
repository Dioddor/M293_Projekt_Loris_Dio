@echo off
setlocal

:: Konfigurationsabschnitt
set SERVER=www.diodor.bplaced.net
set PORT=21
set USERNAME=diodor.solunac@edu.tbz.ch
set PASSWORD=GEHEIMES PASSWORT
set LOCAL_PATH="C:\Users\Diodor\OneDrive - TBZ\Dokumente\GitHub\M293_Projekt_Loris_Dio\Übungen\Diodor\H2"
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
