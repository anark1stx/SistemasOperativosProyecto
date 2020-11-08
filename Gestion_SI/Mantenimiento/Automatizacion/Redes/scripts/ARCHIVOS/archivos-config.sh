#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CONFIGURACION DEL SERVIDOR ARCHIVOS (principal).
#ESTE SCRIPT NO DEBE SER EJECUTADO DIRECTAMENTE, ABRIR DESDE EL MENU PRINCIPAL.
#NOTA: en caso de estar usando un servicio virtualizado, el gateway del adaptador de red de la PC en la que esté corriendo esta máquina debe cambiarse a la especificada en la carpeta (192.168.0.1).

./Mantenimiento/Automatizacion/UsuariosYGrupos/main.sh && echo "usuarios y grupos creados con exito." || (echo "$(date '+%d/%m/%Y %H:%M:%S'): error creando grupos y usuarios, abortando" >> /logs/resultados_scripts.log ; exit) 

mi_interfaz="Mantenimiento/Automatizacion/Redes/configs/ARCHIVOS/interface" #archivo preconfigurado de la interfaz
mi_ssh="Mantenimiento/Automatizacion/Redes/configs/ARCHIVOS/ssh"
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
service network restart

sed -i "/DEVICE=/c DEVICE=\"$interfaz\"" $mi_interfaz
sed -i "/NAME=/c NAME=\"$interfaz\"" $mi_interfaz

cat $mi_interfaz > /etc/sysconfig/network-scripts/ifcfg-$interfaz #sobreescribir el archivo
hostnamectl set-hostname --static "ARCHIVOS"

ifdown $interfaz
ifup $interfaz
systemctl restart network

test_conn=$(ping -q -t 5 -w1 -c1 192.168.0.5 | grep "100% packet loss")
if [[ -z "$test_conn" ]]; then
	echo "Red configurada con exito."
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores comunicandose con el servidor de respaldos. Verifique que el servidor de respaldos esté encendido y que haya sido configurado." >> /logs/resultados_scripts.log ; exit
fi

echo "Instalando mysql, git, wget ssh, rsync, expect, crontab."; yum install -q -y expect git openssh-server openssh-clients sshpass rsync crontab httpd &>/dev/null && echo "paquetes instalados con exito" || (echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubo errores instalando los paquetes" >> /logs/resultados_scripts.log ; exit)

rm -Rf /var/lib/mysql &>/dev/null #en caso de que ya haya una instalacion borro los datos y desinstalo
yum remove MariaDB-server -qy &>/dev/null

{
echo '# MariaDB 10.3 CentOS repository list - created 2019-10-28 23:35 UTC'
echo '# http://downloads.mariadb.org/mariadb/repositories/'
echo '[mariadb]'
echo 'name = MariaDB'
echo 'baseurl = http://yum.mariadb.org/10.3/centos6-x86'
echo 'gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB'
echo 'gpgcheck=1'
} > /etc/yum.repos.d/mariadb.org.repo

yum install -y MariaDB-server
service mysql start
#la instalacion de mysql es automatizada con autoexpect.
autoexpect ./mysql_secure_installation


service sshd start
service httpd start

sshd_status=$(service sshd status | grep "ERROR")

if [[ -z "$sshd_status" ]]; then
	echo "SSH instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando SSH." >> /logs/resultados_scripts.log ; exit
fi

apache_status=$(service httpd status | grep "ERROR")

if [[ -z "$apache_status" ]]; then
	echo "Apache instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando Apache." >> /logs/resultados_scripts.log ; exit
fi

mysql_status=$(service mysql status | grep "ERROR")

if [[ -z "$mysql_status" ]]; then
	echo "MySQL instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando mysql." >> /logs/resultados_scripts.log ; exit
fi

chkconfig --add sshd
chkconfig --add httpd
chkconfig --add mysql

chkconfig sshd on
chkconfig httpd on
chkconfig mysql on

sed -i "/SELINUX=enforcing/c SELINUX=disabled" /etc/sysconfig/selinux  #deshabilitar SELinux para poder usar rsync sin problemas

#genero clave ssh, 
su admin -c "yes '' | ssh-keygen -N '' >&- 2>&-"

copiar_id=$(su admin -c "sshpass -p$adminpwd ssh-copy-id admin@192.168.0.5 -p 49555" | grep "denied\|ERROR") #sshpass permite pasar la contrasena del usuario a ssh por stdin

if [[ -n "$copiar_id"  ]]; then
	echo "$(date '+%d/%m/%Y %H:%M:%S'): No se pudo establecer comunicacion con el servidor de respaldos, verifique que este encendido y que haya sido configurado." >> /logs/resultados_scripts.log ; exit
else
	echo "Conexion con servidor de respaldos establecida con exito, copiada clave SSH del usuario admin"
fi

cat $mi_ssh > /etc/ssh/sshd_config

iptables -A INPUT -i lo -j ACCEPT #trafico de la loopback (localhost)
iptables -A INPUT -p tcp --destination-port 22 -j DROP
iptables -A INPUT -p tcp -m tcp --dport 49555 -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 3306 -j ACCEPT

service sshd restart

service iptables save
service iptables restart

#este archivo guarda las credenciales y cada vez que efectuo mysqldump no tengo que especificar contrasena.
cp .my.cnf /home/admin/.my.cnf
chown admin /home/admin/.my.cnf
chmod 600 /home/admin/.my.cnf

#copio todos los scripts al directorio acordado
cp -R Mantenimiento/Automatizacion/scripts_cron /var/
cp mis_rutinas /var/mis_rutinas
#asigno el archivo
crontab -u root /var/mis_rutinas
