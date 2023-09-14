@echo off
title PC Optimizer Pro
color 0b
mode 1000
cls
goto ProgramStart

:ProgramStart
echo Gracias por elegir PC Optimizer Pro para su dispositivo. 
echo PC Optimizer Pro es un programa con la funcion de eliminar archivos innecesarios del equipo para asi optimizar el rendimiento.
echo PC Optimizer Pro solicita permiso para realizar un escaneo del equipo. Permitir?
set choice=
set /p choice=Y or N?: 
if NOT '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='Y' goto yes
if '%choice%'=='y' goto yes
if '%choice%'=='N' goto no
if '%choice%'=='n' goto no
echo "%choice%" no es un valor soportado en el formato seleccionado. Porfavor responde con Y o N(capitalization doesn't matter).
pause
cls
goto ProgramStart

:no
cls
echo Abortando escaneo.
pause
exit

:yes
cls
echo Comenzando escaneo del equipo.
pause
tree "%USERPROFILE%"
echo ==========================================================================
echo ==========================================================================
echo El escaneo se ha completado, se procedera a la limpieza de archivos innecesarios
pause
goto Deletion

:Deletion
echo Limpieza de archivos innecesarios en proceso:
timeout 3
del "C:\$Recycle.Bin\S-1-5-21-3622297241-4117787247-1795188531-1001" /f /q /s
del "%SYSTEMROOT%\Temp" /f /q /s
del "%USERPROFILE%\AppData\Local\Temp" /f /q /s
del "%USERPROFILE%\AppData\Local\CrashDumps" /f /q /s
del "%APPDATA%\Microsoft\Windows\Recent" /f /q /s
del "C:\Windows\Logs\MeasuredBoot" /f /q /s
del "C:\ProgramData\Microsoft\Windows\WER" /f /q /s
del "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Cache" /f /q /s
del "%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles\h0noizwa.default-release\cache2" /f /q /s
del "%USERPRIFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache" /f /q /s
echo Archivos innecesarios eliminados satisfactoriamente. Esta pestaña se cerrara en 15 segundos.
echo Gracias por elegir PC Optimicer Pro para optimizar su equipo.
echo Realmente nos acabamos de cargar tu pc por bobo. ATT. @zer0who en discord
timeout 15
