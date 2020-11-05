#!/bin/bash 

opciont="99"
clear
while [ "$opciont" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de respaldos 			        |"
	echo "|								|"
	echo "|1- Respaldar todas las bases de datos			|"
	echo "|2- Respaldar base de datos SIBIM				|"
	echo "|3- Respaldar base de datos MySQL					|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opciont

	case "$opciont" in 
		"1")
			clear
			./Mantenimiento/Automatizacion/scripts_cron/backup_sibim.sh
			./Mantenimiento/Automatizacion/scripts_cron/backup_mysql.sh
			;;

		"2")
			clear
			./Mantenimiento/Automatizacion/scripts_cron/backup_sibim.sh
			;;

		"3")
			clear
			./Mantenimiento/Automatizacion/scripts_cron/backup_mysql.sh
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

