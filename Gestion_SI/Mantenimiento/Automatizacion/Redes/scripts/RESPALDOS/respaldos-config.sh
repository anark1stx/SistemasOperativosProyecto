#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CONFIGURACION DEL SERVIDOR DE RESPALDOS.
#ESTE SCRIPT NO DEBE SER EJECUTADO DIRECTAMENTE, ABRIR DESDE EL MENU PRINCIPAL.
#NOTA: en caso de estar usando un servicio virtualizado, el gateway del adaptador de red de la PC en la que esté corriendo esta máquina debe cambiarse a la especificada en la carpeta (192.168.0.1).

./Mantenimiento/Automatizacion/UsuariosYGrupos/main.sh && echo "usuarios y grupos creados con exito." || (echo "$(date '+%d/%m/%Y %H:%M:%S'): error creando grupos y usuarios, abortando" >> /logs/resultados_scripts.log ; exit) 

mi_interfaz="Mantenimiento/Automatizacion/Redes/configs/RESPALDOS/interface" #archivo preconfigurado de la interfaz
FOUND=$(cat /proc/net/dev | grep -v "lo" | grep ":") #verificar que haya conectado algun adaptador de red
mi_ssh="Mantenimiento/Automatizacion/Redes/configs/RESPALDOS/ssh"
chmod 0440 Mantenimiento/Automatizacion/Redes/configs/RESPALDOS/sudoers
mi_sudoers="Mantenimiento/Automatizacion/Redes/configs/RESPALDOS/sudoers"
if  [ -n "$FOUND" ] ; then
	echo "Adaptador(es) de red detectados: "
        echo $FOUND
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): No se encontraron adaptadores de red :(. Hace el favor de conectar el cable Ethernet." >> /logs/resultados_scripts.log ; exit 
fi

interfaz=$(ip a show | cut -d ' ' -f 2 | grep -v "lo" | sed '/^[[:space:]]*$/d' | head -n 1 | tr -d ':' ) #conseguimos el nombre de la interfaz

#rehago el symlink de la interfaz
ifdown $interfaz 
ifup $interfaz

#reinicio servicio
systemctl restart network

sed -i "/DEVICE=/c DEVICE=\"$interfaz\"" $mi_interfaz
sed -i "/NAME=/c NAME=\"$interfaz\"" $mi_interfaz

cat $mi_interfaz > /etc/sysconfig/network-scripts/ifcfg-$interfaz #sobreescribir el archivo
hostnamectl set-hostname --static "RESPALDO"

ifdown $interfaz
ifup $interfaz
systemctl restart network

echo "Instalando git, ssh, rsync y firewalld."; yum install -q -y git openssh-server openssh-clients sshpass rsync firewalld &>/dev/null && echo "paquetes instalados con exito" || (echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubo errores instalando los paquetes" >> /logs/resultados_scripts.log ; exit)

systemctl start sshd
systemctl start firewalld

sshd_status=$(systemctl show -p ActiveState sshd | cut -d "=" -f2)

if [[ $sshd_status = "active"  ]]; then
	echo "SSH instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando SSH." >> /logs/resultados_scripts.log ; exit
fi

firewalld_status=$(systemctl show -p ActiveState firewalld | cut -d "=" -f2)

if [[ $firewalld_status = "active"  ]]; then
	echo "Firewalld instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando Firewalld." >> /logs/resultados_scripts.log ; exit
	exit
fi

systemctl enable sshd
systemctl enable firewalld

sed -i "/SELINUX=enforcing/c SELINUX=disabled" /etc/sysconfig/selinux  #deshabilitar SELinux para poder usar rsync sin problemas

#genero clave ssh, 
su admin -c "yes '' | ssh-keygen -N '' >&- 2>&-"

cat $mi_ssh > /etc/ssh/sshd_config
sudo firewall-cmd --add-port=49555/tcp --permanent
sudo firewall-cmd --remove-port=22/tcp
systemctl restart sshd
firewall-cmd --reload

echo "Creando e inicializando directorios de respaldos " 
mkdir -p /backup/SIBIM-BDS
mkdir -p /backup/Linux
cd /backup/Linux && git init #repositorio con archivos del sistema, /etc, /home
cd /backup/SIBIM-BDS && git init #repositorio para sibim y mysql
chown -R admin /backup
chmod 755 /backup

cat $mi_sudoers > /etc/sudoers
