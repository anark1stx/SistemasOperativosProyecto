#!/bin/bash - 

opcion=99
clear
while [ $opcion -ne 0  ] #inicio estructura WHILE
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Gestion 			        |"
	echo "|								|"
	echo "|1- Gestionar usuarios						|"
	echo "|2- Gestionar grupos						|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opcion

	case $opcion in #inicio estructura CASE
		1)
			clear
			./usuarios/gestion_usuarios.sh
			;;

		2)
			clear
			./grupos/gestion_grupos.sh
			;;
		0)
			opcion=0
			;;

		*)	echo "Opción inválida"
			;;
	esac #final estructura CASE

done #final estructura WHILE

