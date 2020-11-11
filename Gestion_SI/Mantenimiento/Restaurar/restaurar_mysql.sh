#!/bin/bash
test -f /home/admin/.ssh/id_rsa && echo "Clave SSH encontrada, procediendo a conectarse con el repositorio remoto" || ( echo "No se encontraron claves SSH para el usuario admin, primero debe correr el script de instalacion para este servidor (ARCHIVOS)"  >> /logs/restauraciones.log ; exit )
cd /
echo "$(date '+%d/%m/%Y %H:%M:%S'): Restaurando bases de datos" >> /logs/respaldos.log
echo "A continuacion sera mostrado todo el historial de respaldos, luego de que haya localizado el que quiere restaurar, copie los primeros 6 digitos del SHA, y escribalos, el sistema se restaurara automaticamente en ese punto." ; ssh -i /home/admin/.ssh/id_rsa -p 49555 admin@192.168.0.5 'cd /backup/SIBIM-BDS && git log'
read -p "Ingrese los primeros 6 digitos del SHA del commit que desea respaldar: " sha
echo "Copiando el repositorio." ; rsync -e "ssh -i /home/admin/.ssh/id_rsa -p 49555" -chavzp admin@192.168.0.5:/backup/SIBIM-BDS /var && echo "Repositorio copiado con exito" || (echo "hubo errores copiando el repositorio." >> /logs/respaldos.log ; exit)
echo "SHA seleccionado fue: $sha, restaurandolo." ; cd /var/SIBIM-BDS && git reset --hard $sha && echo "Repositorio restaurado a la version indicada" || (echo "Hubo errores restaurando el repositorio" >> /logs/respaldos.log ; exit)
mysql -u root -p$adminpwd < /var/SIBIM-BDS/sibim.sql && echo "$(date '+%d/%m/%Y %H:%M:%S'): base de datos sibim restaurada con exito" >> /logs/respaldos.log || (echo "Hubo errores restaurando sibim" >> /logs/respaldos.log ; exit)
mysql -u root -p$adminpwd < /var/SIBIM-BDS/mysql.sql && echo "$(date '+%d/%m/%Y %H:%M:%S'): base de datos mysql restaurada con exito" >> /logs/respaldos.log || (echo "Hubo errores restaurando mysql" >> /logs/respaldos.log ; exit)
rm -rf /var/SIBIM-BDS
