#!/bin/bash 
. grupos/funciones_grupos.sh

opcion2="99"
while [ "$opcion2" != "0" ] 

do
	echo "----------------------------------------------------------------"
	echo "|		Menu de Gestion de Grupos		        |"
	echo "|								|"
	echo "|1- Crear un grupo 						|"
	echo "|2- Editar un grupo						|"
	echo "|3- Eliminar un grupo 						|"
	echo "|0- Volver							|"
	echo "----------------------------------------------------------------"
	read -p ">" opcion2

	case "$opcion2" in 
		"1")
			ingresar_grupo 
			;;

		"2")
			clear
			./grupos/editar_grupos.sh 
			;;

		"3")
			eliminar_grupo
			;;
		"0")
			clear
			opcion2=0
			;;
		*)
			clear
			echo "Opcion invalida"
			;;

	esac 

done 



