#!/bin/bash 

opcion="99"
clear
while [ "$opcion" != "0"  ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Gestion 			        |"
	echo "|								|"
	echo "|1- Gestionar usuarios						|"
	echo "|2- Gestionar grupos						|"
	echo "|0- Salir							|"
	echo "----------------------------------------------------------------"
	read -p "> " opcion

	case "$opcion" in 
		"1")
			clear
			./UsuariosGrupos/usuarios/gestion_usuarios.sh
			;;

		"2")
			clear
			./UsuariosGrupos/grupos/gestion_grupos.sh
			;;
		"0")
			clear
			opcion="0"
			;;

		*)	
			clear
			echo "Opcion invalida"
			;;
	esac

done

