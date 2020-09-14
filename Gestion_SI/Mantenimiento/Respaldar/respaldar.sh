#!/bin/bash 

opcionx="99"
clear
while [ "$opcionx" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de respaldos 			        |"
	echo "|								|"
	echo "|1- Respaldar Linux							|"
	echo "|2- Respaldar MySQL							|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opcionx

	case "$opcionx" in 
		"1")
			clear
			./Mantenimiento/Respaldar/respaldar_linux.sh
			;;

		"2")
			clear
			./Mantenimiento/Respaldar/respaldar_mysql.sh
			;;
		"0")
			clear
			opcionx="0"
			;;

		*)	
			clear
			echo "Opcion invalida"
			;;
	esac

done

