#!/bin/bash -

ingresar_grupo(){ 
	read -p "Ingrese el nombre del grupo que desea añadir:" _grupo
	groupadd $_grupo
}


eliminar_grupo(){
	read -p "Ingrese el nombre del grupo que desea eliminar: " _grupo
	read -p "Seguro que desea eliminar al grupo $_grupo? (s/n):" opt

	case "$opt" in
		s)
			groupdel $_grupo
			echo "El grupo $_grupo eliminado con éxito."
			;;

		n)
			echo "El grupo no fue eliminado."
			;;
		*)
			echo "Seleccione solamente "s" o "n" "
	esac
}


cambiar_gid(){
	read -p "Ingrese el grupo del que desea cambiar su id: " _grupo
	gid_actual=$(grep $_grupo /etc/group | cut -d ":" -f3)
	echo "GID actual: $gid_vieja"
	read -p "Ingrese la nueva GID para el $_grupo: " _gid_nueva
	groupmod -g $_gid_nueva $_gid_actual
}

cambiar_nombre_grupo(){
	read -p "Ingrese el grupo del que desea cambiar su nombre: " _grupo
	read -p "Ingrese el nuevo nombre para el $_grupo: " _nom_nuevo
	groupmod -g $_nom_nuevo $_grupo
}
