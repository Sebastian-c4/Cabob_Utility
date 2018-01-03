@echo off
echo 自动设置中...请稍候...
setlocal enabledelayedexpansion
set now=E:\BGII - SoA\
set fn=baldur.ini
(for /f "tokens=*" %%i in (%fn%) do (
set s=%%i
set s=!s:%now%=%~dp0!
echo !s!))>temp.ini
move /y temp.ini "%fn%" 


set now=e:\\BGII - SoA\\
set p=baldur.reg
set fn=baldur.reg.txt
type %p% >> %fn%
(for /f "tokens=*" %%i in (%fn%) do (
set s=%%i
set s=!s:%now%=XXX!
set s=!s:\=\\\!
set s=!s:XXX=%~dp0!
set s=!s:\=\\!
set s=!s:\\\\\\=\!
set s=!s:\\\\=\\!
echo !s!))>temp.reg.txt
move /y temp.reg.txt "%p%" 
del "%fn%"

regedit.exe/s "%p%"
del "%p%"

REM 版本说明.rtf
del "%~f0"