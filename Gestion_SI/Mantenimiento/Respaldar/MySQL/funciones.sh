#!/bin/bash - 

respaldar_mysql (){
	case "$1" in 
		"1")
			clear
			mysqldump -u admin sibim --routines > sibim_backup.sql
		        mysqldump -u admin mysql > mysql_backup.sql
			;;
	esac
}
