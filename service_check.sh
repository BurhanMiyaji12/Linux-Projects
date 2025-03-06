#! /bin/bash

LOG="/var/log/service_check. log"
services=("apache2" "samba" "bind9")
check_services () {
	local service_name="$1"
	status=$(systemctl is-active "$service_name" )
	echo "$(date): Service '$service_name' is $status." | tee -a "$LOG"
}
echo "Starting service check...." | tee -a "$LOG"
for service in "${services[al}"; do
	check_services "$service"
done
echo "Service check is completed on $(date)." | tee -a "$LOG"