#!/bin/bash
# $1 = tipo de respaldo
echo "$(date '+%d/%m/%Y %H:%M:%S'): Respaldando BD MYSQL $1 " >> /logs/respaldos.log
mysqldump -u root mysql -p$adminpwd --databases > mysql.sql && echo "dump generado" || (echo $(date '+%d/%m/%Y %H:%M:%S'): "hubieron errores efecutando dump mysql" ; exit)
mysqldump -u root sibim -p$adminpwd --routines --databases > sibim.sql && echo "dump generado" || (echo $(date '+%d/%m/%Y %H:%M:%S'): "hubieron errores efecutando dump sibim" ; exit)
rsync -e "ssh -p 49555" -az mysql.sql admin@192.168.0.5:/backup/SIBIM-BDS/ && echo "BD MYSQL respaldado con exito" >> /logs/respaldos.log || echo "Hubo errores respaldando BD MYSQL" >> /logs/respaldos.log
rsync -e "ssh -p 49555" -az sibim.sql admin@192.168.0.5:/backup/SIBIM-BDS/ && echo "BD SIBIM respaldado con exito" >> /logs/respaldos.log || echo "Hubo errores respaldando BD SIBIM" >> /logs/respaldos.log

ssh root@192.168.0.5 -p 49555 'cd /backup/SIBIM-BDS && git config --global user.email "overclodep@gmail.com" ; git config --global user.name "admin"'
ssh root@192.168.0.5 -p 49555 'cd /backup/SIBIM-BDS && sudo git add -A && sudo git commit -m "Respaldo BDS $1"'
#ejecuto rsync como usuario admin puesto que es el usuario que por defecto tiene copiada su clave ssh en el servidor de respaldos cuando ejecuto el script de automatizacion.
rm -rf mysql.sql
rm -rf sibim.sql
