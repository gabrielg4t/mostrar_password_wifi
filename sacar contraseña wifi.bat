@echo off
COLOR 0A
MODE con:cols=80 lines=50

cls
echo ����������������������������������������������ͻ
echo � WIFI PASSWORD                          � � �x�
echo ������������������������������������������������
echo �                                              �
echo �     REDES ALAMCENADAS                        �
netsh wlan show profiles                   
echo �                                              �
echo ������������������������������������������������
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
