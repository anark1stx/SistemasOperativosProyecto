#!/bin/bash - 
#con esto le indicamos a bash que tiene que ejecutar las funciones que están en ese archivo.
. usuarios/funciones_usuarios.sh

opcion2=99
while [ $opcion2 -ne 0 ] #inicio estructura while
do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Gestion de Usuarios		        |"
	echo "|								|"
	echo "|1- Crear un usuario						|"
	echo "|2- Editar un usuario						|"
	echo "|3- Eliminar un usuario						|"
	echo "|0- Volver							|"
	echo "----------------------------------------------------------------"
	read -p ">" opcion2

	case $opcion2 in 
		1)
			ingresar_usuario #llamamos a la funcion ingresar usuario
			;;

		2)
			clear
			./usuarios/editar_usuarios.sh #script que contiene otro menu en el que se puede, sacar de grupos,
			              		      #añadir a grupos, cambiar uid, cambiar nombre de usuario
			;;

		3)
			eliminar_usuario
			;;
		0)
			clear
			opcion2=0
			;;
		*)
			clear
			echo "Opcion inválida"
			;;

	esac #final estructura case

done #final estructura while



