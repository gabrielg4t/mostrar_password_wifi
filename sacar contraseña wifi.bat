@echo off
COLOR 0A
MODE con:cols=80 lines=50

cls
echo 浜様様様様様様様様様様様様様様様様様様様曜曜曜融
echo � WIFI PASSWORD                          � � �x�
echo 麺様様様様様様様様様様様様様様様様様様様擁擁擁洋
echo �                                              �
echo �     REDES ALAMCENADAS                        �
netsh wlan show profiles                   
echo �                                              �
echo 青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰
echo               [ github.com/rdz-lab.com ]
echo.
SET /P v=Ingresa el nombre del perfil y presiona "ENTER":

if %v%==1 GOTO WIFI

:WIFI
cd %userprofle%/desktop/
echo Los datos seran almacenados como WIFI.txt en el escritorio

timeout -t 2 >> nul

netsh wlan show profile name=%v% key=clear > WIFI.txt

exit
