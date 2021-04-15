#!/bin/bash

if [ -d /etc/zabbix ]; then

	if [ -d /etc/zabbix/zabbix_conf ]; then
		cd /etc/zabbix/zabbix_conf
		git pull origin main
	else
		cd /etc/zabbix
		git clone https://github.com/dudehro/zabbix_conf.git
	fi
	systemctl restart zbbix-agent

else
	echo "Verzeichnis /etc/zabbix nicht gefunden."
fi
