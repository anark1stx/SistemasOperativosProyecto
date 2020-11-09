#!/bin/bash 
cp -R Mantenimiento/Automatizacion/scripts_cron /var/

opciont="99"
clear
while [ "$opciont" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de respaldos 			        |"
	echo "|								|"
	echo "|1- Respaldar bases de datos sibim y mysql		|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opciont

	case "$opciont" in 
		"1")
			clear
			cd /
			./var/scripts_cron/backup_mysql.sh "MANUAL"
			;;
		"0")
			clear
			opciont="0"
			;;

		*)	
			clear
			echo "Opcion invalida"
			;;
	esac

done

