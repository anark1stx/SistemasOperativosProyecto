#!/bin/bash
file="homeT-$(date +%d-%m-%Y).tar.gz"
tar -zcpf "$file" /home && rsync --remove-source-files -raz -e 'ssh -p 49555' $file admin@192.168.0.250:/backup/home
