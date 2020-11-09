#!/bin/bash
# $1 = tipo de respaldo
echo "$(date '+%d/%m/%Y %H:%M:%S'): Respaldando BD SIBIM $1 " >> /logs/respaldos.log
mysqldump -u root mysql -p$adminpwd > dump.sql && echo "dump generado" || echo "hubieron errores efecutando dump" 
rsync -e "ssh -i /home/admin/.ssh/id_rsa -p 49555" -arz /home admin@192.168.0.5:/backup/Linux/ && echo "Directorio HOME respaldado con exito" >> /logs/respaldos.log || echo "Hubo errores respaldando directorio h
ome" >> /logs/respaldos.log

ssh admin@192.168.0.5 -i /home/admin/.ssh/id_rsa -p 49555 'cd /backup/SIBIM-BDS && git config --global user.email "overclodep@gmail.com" ; git config --global user.name "admin"'
ssh admin@192.168.0.5 -i /home/admin/.ssh/id_rsa -p 49555 'cd /backup/SIBIM-BDS && git add -A && git commit -m "Respaldo HOME $1"'
#ejecuto rsync como usuario admin puesto que es el usuario que por defecto tiene copiada su clave ssh en el servidor de respaldos cuando ejecuto el script de automatizacion.
rm -rf dump.sql
