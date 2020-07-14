#!/bin/bash - 
#con esto le indicamos a bash que tiene que ejecutar las funciones que están en ese archivo.
. grupos/funciones_grupos.sh

opcion2=99
while [ $opcion2 -ne 0 ] #inicio estructura while
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

	case $opcion2 in 
		1)
			ingresar_grupo #llamamos a la funcion ingresar usuario
			;;

		2)
			clear
			./grupos/editar_grupos.sh #script para cambiar parametros de los grupos
			;;

		3)
			eliminar_grupo
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



