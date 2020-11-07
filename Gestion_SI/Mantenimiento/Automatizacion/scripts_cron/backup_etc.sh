#!/bin/bash
su admin -c "rsync --port=49555 -avr /etc admin@192.168.0.5:/backup/Linux/home"

#ejecuto rsync como usuario admin puesto que es el usuario que por defecto tiene copiada
su clave ssh en el servidor de respaldos cuando ejecuto el script de automatizacion.
