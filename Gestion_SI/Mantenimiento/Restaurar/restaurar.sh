#!/bin/bash 

opcionz="99"
clear
while [ "$opcionz" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de restauración 			        |"
	echo "|								|"
	echo "|1- Restaurar Linux							|"
	echo "|2- Restaurar MySQL							|"
	#HACER MENU PARA RESTAURACION DE RED
	echo "|3- Restaurar configuración de red					|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opcionz

	case "$opcionz" in 
		"1")
			clear
			./Mantenimiento/Restaurar/restaurar_linux.sh
			;;

		"2")
			clear
			./Mantenimiento/Restaurar/restaurar_mysql.sh
			;;
		"0")
			clear
			opcionz="0"
			;;

		*)	
			clear
			echo "Opcion invalida"
			;;
	esac

done

