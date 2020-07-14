#!/bin/bash -
. usuarios/funciones_usuarios.sh
opcion3=99
while [ $opcion3 -ne 0 ] #inicio estructura while
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Edición de Usuarios		        |"
	echo "|								|"
	echo "|1- Cambiar nombre de usuario					|"
	echo "|2- Cambiar id de usuario					|"
	echo "|3- Cambiar contraseña de usuario				|"
	echo "|0- Volver							|"
	echo "----------------------------------------------------------------"
	read -p ">" opcion3

	case $opcion3 in 
		1)
			cambiar_nombre_usuario
			;;
		2)
			cambiar_id_usuario
			;;
		3)
			cambiar_contrasena_usuario
			;;
		0)
			clear
			opcion3=0
			;;
		*)
			echo "Opción inválida"
	esac

done
