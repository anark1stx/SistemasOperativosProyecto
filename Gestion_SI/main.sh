#!/bin/bash 

opcion0="99"
clear
while [ "$opcion0" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Gestion SIBIM 			        |"
	echo "|								|"
	echo "|1- Gestionar usuarios y grupos					|"
	echo "|2- Mantenimiento						|"
	echo "|3- Configurar servidor(es)				|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opcion0

	case "$opcion0" in 
		"1")
			clear
			./UsuariosGrupos/menu_gestion.sh
			;;

		"2")
			clear
			./Mantenimiento/menu_mantenimiento.sh
			;;
		"3")
			clear
			./Mantenimiento/Automatizacion/Redes/main.sh
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

