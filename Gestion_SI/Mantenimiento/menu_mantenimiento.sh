#!/bin/bash 

opcionx="99"
clear
while [ "$opcionx" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Mantenimiento 			        |"
	echo "|								|"
	echo "|1- Respaldar							|"
	echo "|2- Restaurar							|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opcionx

	case "$opcionx" in 
		"1")
			clear
			./Mantenimiento/Respaldar/respaldar.sh
			;;

		"2")
			clear
			./Mantenimiento/Restaurar/restaurar.sh
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

