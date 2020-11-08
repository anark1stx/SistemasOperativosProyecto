#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CONFIGURACION DEL SERVIDOR DHCP.
#ESTE SCRIPT NO DEBE SER EJECUTADO DIRECTAMENTE, ABRIR DESDE EL MENU PRINCIPAL.
#NOTA: en caso de estar usando un servicio virtualizado, el gateway del adaptador de red de la PC en la que esté corriendo esta máquina debe cambiarse a la especificada en la carpeta (192.168.0.1).

FOUND=$(cat /proc/net/dev | grep -v "lo" | grep ":") #verificar que haya conectado algun adaptador de red

if  [ -n "$FOUND" ] ; then
	echo "Adaptador(es) de red detectados: "
        echo $FOUND
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): No se encontraron adaptadores de red :(. Hace el favor de conectar el cable Ethernet." >> /logs/resultados_scripts.log ; exit
fi

mi_interfaz="Mantenimiento/Automatizacion/Redes/configs/DHCP/interface" #archivo preconfigurado de la interfaz
interfaz=$(ip a show | cut -d ' ' -f 2 | grep -v "lo"| sed '/^[[:space:]]*$/d' | head -n 1 | tr -d ':' ) #conseguimos el nombre de la interfaz

#rehago el symlink de la interfaz
ifdown $interfaz 
ifup $interfaz

#reinicio servicio
systemctl restart network

sed -i "/DEVICE=/c DEVICE=\"$interfaz\"" $mi_interfaz
sed -i "/NAME=/c NAME=\"$interfaz\"" $mi_interfaz

cat $mi_interfaz > /etc/sysconfig/network-scripts/ifcfg-$interfaz #sobreescribir el archivo

ifdown $interfaz
ifup $interfaz
systemctl restart network

echo "Limpiando cache..."; yum clean all &>/dev/null #borrar cache paquetes y demas para evitar conflictos
echo "Instalando FirewallD y dhcpd"; yum install -q -y firewalld dhcpd &>/dev/null && echo "paquetes instalados con exito" || (echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubo errores instalando los paquetes" >> /logs/resultados_scripts.log ; exit)

#cambiar hostname
hostnamectl set-hostname --static "DHCP"

systemctl start dhcp
systemctl enable dhcp
firewall-cmd --zone=public --add-port=53/tcp --permanent
systemctl start firewalld
systemctl enable firewalld

dhcpd_status=$(systemctl show -p ActiveState "dhcpd" | cut -d "=" -f2)

if [ $dhcpd_status = "active" ]; then
	echo "Instalado dhcpd con éxito."
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores configurando dhcpd." >> /logs/resultados_scripts.log ; exit
fi

firewalld_status=$(systemctl show -p ActiveState firewalld | cut -d "=" -f2)
if [ $firewalld_status = "active" ]; then
	echo "Agregada regla al firewall para el servicio DHCP."
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores configurando el firewall" >> /logs/resultados_scripts.log ; exit
fi
