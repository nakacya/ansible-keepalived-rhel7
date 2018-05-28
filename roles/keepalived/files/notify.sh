notify.sh
#/bin/sh
#Default=SENDING A Alert
UPDATE_DATA="1"
mariadb_set="mysql -u root zabbix -e "

logger "KeepAlived STATUS Notify Change to $1!!"

if [ $# -ne 1 ]; then
   exit 0
fi

if [ $1 = "INSTANCE" ]; then
   exit 0
fi

if [ $1 = "MASTER" ]; then
#  Stop Sending Alert
   UPDATE_DATA="0"
fi

UPDATE_SQL="update media_type set status=$UPDATE_DATA;"

logger "zabbix media_type=$UPDATE_DATA"
$mariadb_set "$UPDATE_SQL"
exit 0


