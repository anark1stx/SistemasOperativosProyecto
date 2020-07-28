#!/bin/bash

ingresar_usuario(){ #Cumple la funcion de añadir nuevo usuario + agregarlo a grupos.(alta + modificacion) 
	read -p "Ingrese nombre de usuario: " _user
	usr_existe=$(cat /etc/passwd | grep $_user | wc -l)
	if [ $usr_existe -eq 1 ]; then
	clear
	echo "El usuario $_user ya existe."
	return 1
	fi

	echo "Si desea agregar al usuario "$_user" a uno o mas grupos, ingrese los grupos separados por coma a continuacion, caso contrario, deje vacío: "
	echo ""
	read -p "Grupos a agregar: " _grupos

	grupos_con_coma="" 
	grupos_que_no_existen=""
	
	if [ $(echo $_grupos | tr ',' ' '| wc -w) -lt 1 ]; then 
		useradd $_user
	else
		_grupos="$(echo "$_grupos" | tr -d ' ')" #remover espacios
		IFS="," #indicar delimitador
		for grupo in $_grupos
		do
			grupo_existe=$(grep "$grupo" /etc/group | wc -l)
			if [ $grupo_existe -eq 0 ]; then
				grupos_que_no_existen+=",$grupo"
			else
				grupos_con_coma+=",$grupo"
			fi	
		done

		grupos_con_coma=${grupos_con_coma#","}
		grupos_con_coma=${grupos_con_coma%","}
		grupos_que_no_existen=${grupos_que_no_existen#","}
		grupos_que_no_existen=${grupos_que_no_existen%","}

		if [ ${#grupos_que_no_existen} -gt 0 ]; then

		read -p "los grupos: $grupos_que_no_existen, no existen, desea crearlos? (s/n)" _crear
		
		case "$_crear" in
			s)
				grupos_que_no_existen="$(echo "$_grupos_que_no_existen" | tr -d ' ')" #remover espacios
				. grupos/funciones_grupos.sh
				ingresar_grupo "$grupos_que_no_existen"
				grupos_con_coma+=",$grupos_que_no_existen"
				;;

			n)
				;;
			*)
				echo "Seleccione solamente "s" o "n" "
		esac

		fi
		grupos_con_coma="$(echo "$grupos_con_coma" | tr -d ' ')" #remover espacios	
		grupos_con_coma=${grupos_con_coma%","}

		useradd $_user
		usermod -a -G "$grupos_con_coma" "$_user"
	fi
}


eliminar_usuario(){
	read -p "Ingrese el nombre del usuario que desea eliminar: " _user
	read -p "Seguro que desea eliminar al usuario $_user? (s/n):" opt

	case "$opt" in
		s)
			userdel -r -f $_user
			echo "El usuario $_user eliminado con éxito."
			;;

		n)
			echo "El usuario no fue eliminado."
			;;
		*)
			echo "Seleccione solamente "s" o "n" "
	esac
}


cambiar_uid(){
	read -p "Ingrese el nombre del usuario del que desea cambiar su uid: " _user
	echo "UID actual: $(grep $_user /etc/passwd | cut -d: -f3)"
	read -p "Ingrese la nueva UID para $_user: " _uid_nueva
	usermod -u $_uid_nueva $_user
}

cambiar_nombre_usuario(){
	read -p "Ingrese el nombre del usuario que desea cambiar: " _user
	read -p "Ingrese el nuevo nombre para el usuario $_user: " _userNuevo
	mv /home/$_user /home/$_userNuevo 
	usermod -l $_userNuevo $_user 
	
}

cambiar_contrasena_usuario(){
	read -p "Ingrese el nombre del usuario del cual desea cambiar su contraseña: " _user
	passwd $_user
}

eliminar_usuario_de_grupo(){
	read -p "Ingrese el usuario que desea eliminar de determinados grupos: " _user
	echo "Grupos actuales de: $(groups $_user)"
	read -p "Ingrese el/los nombre(s) del(os) grupo(s) del(os) que desea eliminar a $_user separados por coma: " _grupos_sacar
	
	grupos_con_coma="" 
	IFS=","	
	for grupo in $_grupos_sacar
	do
		grupo_existe=$(grep "$grupo" /etc/group | wc -l)
		if [ $grupo_existe -eq 1 ]; then
			usuario_en_grupo=$(grep "$grupo" /etc/group | grep "$_user" | wc -l )
			if [ $usuario_en_grupo -eq 0 ]; then
				echo "El usuario $_user no pertence al grupo $grupo"
			else
				grupos_con_coma+=",$grupo"
			fi
		else
			echo "El grupo $grupo no existe"
		fi	
	done

	grupos_con_coma=${grupos_con_coma#","}	
	grupos_con_coma=${grupos_con_coma%","}
	grupos_con_coma="$(echo "$grupos_con_coma" | tr -d ' ')" #remover espacios	
	IFS=","
	for g in $grupos_con_coma
	do
		gpasswd -d "$_user" "$g"
	done

}
