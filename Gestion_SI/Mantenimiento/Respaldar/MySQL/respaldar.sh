#!/bin/bash 


opciont="99"
clear
while [ "$opciont" != "0"  ] 
do #hagamos de cuenta que mysql tiene respaldos incrementales y diferenciales
	echo "----------------------------------------------------------------"
	echo "|		Menu de respaldos 			        |"
	echo "|								|"
	echo "|1- Respaldo Total							|"
	echo "|2- Respaldo Incremental					|"
	echo "|3- Respaldo Diferencial							|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opciont

	case "$opciont" in 
		"1")
			clear
			respaldar_mysql 1 #funcion para respaldar mysql en el archivo funciones.sh
			;;

		"2")
			clear
			respaldar_mysql 2
			;;

		"3")
			clear
			respaldar_mysql 3
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

