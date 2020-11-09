#!/bin/bash 
opcion0="99"
clear
while [ "$opcion0" != "0"  ] 
do
	echo "---------------------------------------------------------"
	echo "|		Menu de visualizacion de logs                   |"
	echo "|							        |"
	echo "|1- Ver logs de instalaciones  			        |"
	echo "|2- Ver logs de respaldos					|"
	echo "|3- Ver logs de restauraciones        			|"
	echo "|4- Ver las ultimas 100 entradas de rsyslog               |"
	echo "|5- Ver logs de rsyslog por fecha                         |"
        echo "|6- Ver logs de rsyslog por servicio                      |"
	echo "|0- Salir					                |"
	echo "---------------------------------------------------------"
	read -p "> " opcion0

	case "$opcion0" in 
		"1")
			clear
			cat /logs/resultados_scripts.log
			;;
		"2")
			clear
			cat /logs/respaldos.log
			;;
		"3")
			clear
			cat /logs/restauraciones.log
			;;
		"4")
			clear
			tail -100 /var/log/secure 
			;;
		"5")
			clear
     			read -p "Ingrese la fecha y/u hora (Formato: Nov 9 03:32): " fecha
			grep "$fecha" /var/log/secure
			;;
    		"6")
			clear
      			read -p "Ingrese el nombre del servicio a buscar: " sv
			grep $sv /var/log/secure
			;;
		"0")
			clear
			opcion0="0"
			;;

		*)	
			clear
			echo "Opcion invalida"
			;;
	esac

done
