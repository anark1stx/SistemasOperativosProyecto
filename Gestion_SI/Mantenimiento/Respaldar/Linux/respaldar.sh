#!/bin/bash 

opciony="99"
clear
while [ "$opciony" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de respaldos 			        |"
	echo "|								|"
	echo "|1- Respaldo Total							|"
	echo "|2- Respaldo Incremental					|"
	echo "|3- Respaldo Diferencial							|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opciony

	case "$opciony" in 
		"1")
			clear
			respaldar_linux TOTAL #funcion para respaldar linux en el archivo funciones.sh
			;;

		"2")
			clear
			respaldar_linux INCREMENTAL
			;;

		"3")
			clear
			respaldar_linux DIFERENCIAL
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

