#!/bin/bash 

opciony="99"
clear
while [ "$opciony" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de respaldos Linux			        |"
	echo "|								|"
	echo "|1- Efectuar respaldo completo				|"
	echo "|2- Respaldar directorio home				|"
	echo "|3- Respaldar directorio etc				|"			
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opciony

	case "$opciony" in 
		"1")
			clear
			./Mantenimiento/Automatizacion/scripts_cron/backup_home.sh
			./Mantenimiento/Automatizacion/scripts_cron/backup_etc.sh
			;;

		"2")
			clear
			./Mantenimiento/Automatizacion/scripts_cron/backup_home.sh
			;;

		"3")
			clear
			./Mantenimiento/Automatizacion/scripts_cron/backup_etc.sh
			;;
		"0")
			clear
			opciony="0"
			;;

		*)	
			clear
			echo "Opcion invalida"
			;;
	esac

done

