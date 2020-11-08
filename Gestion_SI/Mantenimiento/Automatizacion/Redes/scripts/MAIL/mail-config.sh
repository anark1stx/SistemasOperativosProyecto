#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CONFIGURACION DEL SERVIDOR MAIL.
#ESTE SCRIPT NO DEBE SER EJECUTADO DIRECTAMENTE, ABRIR DESDE EL MENU PRINCIPAL.
#NOTA: en caso de estar usando un servicio virtualizado, el gateway del adaptador de red de la PC en la que esté corriendo esta máquina debe cambiarse a la especificada en la carpeta (192.168.0.1).

mi_interfaz="Mantenimiento/Automatizacion/Redes/configs/MAIL/interface" #archivo preconfigurado de la interfaz
FOUND=$(cat /proc/net/dev | grep -v "lo" | grep ":") #verificar que haya conectado algun adaptador de red

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
hostnamectl set-hostname --static "MAIL"

ifdown $interfaz
ifup $interfaz
systemctl restart network

echo "Instalando firewalld, postfix y dovecot"; yum install -q -y postfix dovecot &>/dev/null&& echo "paquetes instalados con exito" || (echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubo errores instalando los paquetes" >> /logs/resultados_scripts.log ; exit)
systemctl start firewalld

firewalld_status=$(systemctl show -p ActiveState firewalld | cut -d "=" -f2)

if [[ $firewalld_status = "active"  ]]; then
	echo "Firewalld instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando Firewalld." >> /logs/resultados_scripts.log ; exit
fi

systemctl enable firewalld
systemctl start postfix
systemctl start dovecot
sudo firewall-cmd --add-port=25/tcp --permanent
sudo firewall-cmd --add-port=143/tcp --permanent
firewall-cmd --reload

postfix_status=$(systemctl show -p ActiveState postfix | cut -d "=" -f2)

if [[ $postfix_status = "active"  ]]; then
	echo "Postfix instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando Postfix." >> /logs/resultados_scripts.log ; exit
fi

dovecot_status=$(systemctl show -p ActiveState dovecot | cut -d "=" -f2)

if [[ $dovecot_status = "active"  ]]; then
	echo "Dovecot instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando Dovecot." >> /logs/resultados_scripts.log ; exit
fi

systemctl enable postfix
systemctl enable dovecot
