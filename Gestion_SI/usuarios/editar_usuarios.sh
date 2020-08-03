#!/bin/bash
. usuarios/funciones_usuarios.sh
opcion3="99"
while [ "$opcion3" != "0" ] 
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Edicion de Usuarios		        |"
	echo "|								|"
	echo "|1- Cambiar nombre de usuario					|"
	echo "|2- Cambiar id de usuario					|"
	echo "|3- Cambiar contrasena de usuario				|"
	echo "|4- Eliminar usuario de grupo(s)				|"
	echo "|0- Volver							|"
	echo "----------------------------------------------------------------"
	read -p ">" opcion3

	case "$opcion3" in 
		"1")
			cambiar_nombre_usuario
			;;
		"2")
			cambiar_uid
			;;
		"3")
			cambiar_contrasena_usuario
			;;
		"4")
			eliminar_usuario_de_grupo
			;;
		"0")
			clear
			opcion3="0"
			;;
		*)
			echo "Opcion invalida"
	esac

done
