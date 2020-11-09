#!/bin/bash
# $1 = tipo de respaldo
echo "$(date '+%d/%m/%Y %H:%M:%S'): Respaldando BD SIBIM $1 " >> /logs/respaldos.log
mysqldump -u root sibim -p$adminpwd > sibim.sql && echo "dump generado" || echo "hubieron errores efecutando dump" 
rsync -e "ssh -i /home/admin/.ssh/id_rsa -p 49555" -az sibim.sql admin@192.168.0.5:/backup/SIBIM-BDS/ && echo "BD SIBIM respaldado con exito" >> /logs/respaldos.log || echo "Hubo errores respaldando BD SIBIM" >> /logs/respaldos.log

ssh admin@192.168.0.5 -i /home/admin/.ssh/id_rsa -p 49555 'cd /backup/SIBIM-BDS && git config --global user.email "overclodep@gmail.com" ; git config --global user.name "admin"'
ssh admin@192.168.0.5 -i /home/admin/.ssh/id_rsa -p 49555 'cd /backup/SIBIM-BDS && git add -A && git commit -m "Respaldo SIBIM $1"'
#ejecuto rsync como usuario admin puesto que es el usuario que por defecto tiene copiada su clave ssh en el servidor de respaldos cuando ejecuto el script de automatizacion.
rm -rf sibim.sql
