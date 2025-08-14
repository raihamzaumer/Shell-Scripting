#!/bin/bash
service="docker"
logfile="/var/log/service_monitor.log"
	if ! systemctl is-active --quiet $service; then
		echo "$(date): $service is down. Restarting..." >> $logfile
		sudo systemctl restart $service
	else
		echo "$(date): $service is running." >> $logfile
fi

