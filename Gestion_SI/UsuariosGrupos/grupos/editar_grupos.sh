#!/bin/bash
. UsuariosGrupos/grupos/funciones_grupos.sh
opcion3="99"
while [ "$opcion3" -ne 0 ]
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Edicion de Grupos		        |"
	echo "|								|"
	echo "|1- Cambiar nombre de grupo					|"
	echo "|2- Cambiar id de grupo						|"
	echo "|0- Volver							|"
	echo "----------------------------------------------------------------"
	read -p ">" opcion3

	case "$opcion3" in 
		"1")
			cambiar_nombre_grupo
			;;
		"2")
			cambiar_id_grupo
			;;
		"0")
			clear
			opcion3="0"
			;;
		*)
			echo "Opcion invalida"
	esac

done
