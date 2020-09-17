#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CONFIGURACION DEL SERVIDOR ARCHIVOS (principal).
#ESTE SCRIPT NO DEBE SER EJECUTADO DIRECTAMENTE, ABRIR DESDE EL MENU PRINCIPAL.
#NOTA: en caso de estar usando un servicio virtualizado, el gateway del adaptador de red de la PC en la que esté corriendo esta máquina debe cambiarse a la especificada en la carpeta (192.168.0.1).
mi_interfaz="Mantenimiento/Automatizacion/Redes/configs/ARCHIVOS/interface" #archivo preconfigurado de la interfaz
mi_ssh="Mantenimiento/Automatizacion/Redes/configs/ARCHIVOS/ssh"
FOUND=$(cat /proc/net/dev | grep -v "lo" | grep ":") #verificar que haya conectado algun adaptador de red

if  [ -n "$FOUND" ] ; then
	echo "Adaptador(es) de red detectados: "
        echo $FOUND
else
	echo "No se encontraron adaptadores de red :(. Hace el favor de conectar el cable Ethernet."
	exit
fi

#rehago el symlink de la interfaz
ifdown $interfaz 
ifup $interfaz

interfaz=$(ip a show | cut -d ' ' -f 2 | grep -v "lo" | sed '/^[[:space:]]*$/d' | head -n 1 | tr -d ':' ) #conseguimos el nombre de la interfaz


#reinicio servicio
systemctl restart network

sed -i "/DEVICE=/c DEVICE=\"$interfaz\"" $mi_interfaz
sed -i "/NAME=/c NAME=\"$interfaz\"" $mi_interfaz

cat $mi_interfaz > /etc/sysconfig/network-scripts/ifcfg-$interfaz #sobreescribir el archivo
hostnamectl set-hostname --static "ARCHIVOS"


ifdown $interfaz
ifup $interfaz
systemctl restart network

#test_conn=$(ping -q -t 5 -w1 -c1 192.168.0.253 && grep "100% packet loss")
test_conn=$(ping -c1 8.8.8.8 | grep "100% packet loss")
if [[ -z "$test_conn" ]]; then
	echo "Red configurada con exito."
else
	echo "Hubieron errores configurando la red. Verifique que el servidor DNS haya sido configurado y esté encendido."
	exit
fi

echo "Instalando ssh, rsync, crontab y firewalld."; yum install -q -y openssh-server openssh-clients rsync crontab firewalld &>/dev/null


cat $mi_ssh > /etc/ssh/sshd_config  #la configuracion de SSH

firewall-cmd --add-port=49555/tcp --permanent

systemctl start sshd
systemctl start firewalld

systemctl enable sshd
systemctl enable firewalld

firewall-cmd --reload # por si las deudas

sshd_status=$(systemctl show -p ActiveState sshd | cut -d "=" -f2)

if [[ $sshd_status = "active"  ]]; then
	echo "SSH instalado correctamente"
else
	echo "Hubieron errores instalando SSH."
	exit
fi

firewalld_status=$(systemctl show -p ActiveState firewalld | cut -d "=" -f2)

if [[ $firewalld_status = "active"  ]]; then
	echo "Firewalld instalado correctamente"
else
	echo "Hubieron errores instalando Firewalld."
	exit
fi

sed -i "/SELINUX=enforcing/c SELINUX=disabled" /etc/sysconfig/selinux  #deshabilitar SELinux para poder usar rsync sin problemas

cp -R Mantenimiento/Automatizacion/scripts_cron /var/scripts_cron
cp mis_rutinas /var/mis_rutinas
crontab /var/mis_rutinas
