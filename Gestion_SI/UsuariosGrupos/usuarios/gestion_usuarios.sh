#!/bin/bash
. UsuariosGrupos/usuarios/funciones_usuarios.sh

opcion2="99"
while [[ "$opcion2" != "0" ]]
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Gestion de Usuarios		        |"
	echo "|								|"
	echo "|1- Crear un usuario						|"
	echo "|2- Editar un usuario						|" #editar un usuario da la opcion de agregar un usuario a grupos
	echo "|3- Eliminar un usuario						|"
	echo "|0- Volver							|"
	echo "----------------------------------------------------------------"
	read -p ">" opcion2

	case "$opcion2" in 
		"1")
			ingresar_usuario 
			;;

		"2")
			clear
			./UsuariosGrupos/usuarios/editar_usuarios.sh
			              		     
			;;

		"3")
			eliminar_usuario
			;;
		"0")
			clear
			opcion2="0"
			;;
		*)
			clear
			echo "Opcion invalida"
			;;

	esac 

done 
