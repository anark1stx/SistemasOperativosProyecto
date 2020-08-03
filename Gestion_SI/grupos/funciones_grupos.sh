#!/bin/bash
ingresar_grupo(){ 
		read -p "Ingrese el nombre del grupo que desea anadir:" _grupo

		grupo_existe=$(cat /etc/group | cut -d ":" -f1 | grep -w "$_grupo" /etc/group | wc -l)
		if [ $grupo_existe -eq 0 ]; then
			groupadd $_grupo
		else
			echo "el grupo $_grupo no existe"
		fi
}

eliminar_grupo(){
	read -p "Ingrese el nombre del grupo que desea eliminar: " _grupo
	
	grupo_existe=$(grep -w "$_grupo" /etc/group | wc -l)

	if [ $grupo_existe -ne 0 ]; then

	read -p "Seguro que desea eliminar al grupo $_grupo? (s/n):" opt

	case "$opt" in
		s)
			groupdel $_grupo
			echo "El grupo $_grupo fue eliminado con exito."
			;;

		n)
			echo "El grupo no fue eliminado."
			;;
		*)
			echo "Seleccione solamente "s" o "n" "
	esac
	
	else
		clear
		echo "el grupo $_grupo no existe"
	fi
}


cambiar_gid(){
	read -p "Ingrese el grupo del que desea cambiar su id: " _grupo

	grupo_existe=$(grep -w "$_grupo" /etc/group | wc -l)
	if [ $grupo_existe -ne 0 ]; then
		gid_actual=$(grep -w $_grupo /etc/group | cut -d ":" -f3)
		echo "GID actual: $gid_vieja"
		read -p "Ingrese la nueva GID para el $_grupo: " _gid_nueva
		groupmod -g $_gid_nueva $_gid_actual
	else
		echo "el grupo $_grupo no existe"
	fi
}

cambiar_nombre_grupo(){

	grupo_existe=$(grep -w "$_grupo" /etc/group | wc -l)
	if [ $grupo_existe -ne 0 ]; then
		read -p "Ingrese el grupo del que desea cambiar su nombre: " _grupo
		read -p "Ingrese el nuevo nombre para el $_grupo: " _nom_nuevo
		groupmod -g $_nom_nuevo $_grupo
	else
	echo "el grupo $_grupo no existe"
	fi
}
