#!/bin/sh

set -e

mariadb-install-db --user=mysql --datadir=/var/lib/mysql

if [ ! -e /var/lib/mysql/${MYSQL_DATABASE} ]; then

/usr/bin/mysqld_safe --user=mysql --datadir=/var/lib/mysql &

sleep 3

mariadb -e "
			CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE}; 			
			CREATE USER IF NOT EXISTS ${MYSQL_USER}@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
			CREATE USER IF NOT EXISTS ${MYSQL_USER}@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';
			GRANT ALL ON ${MYSQL_DATABASE}.* TO ${MYSQL_USER}@'%';
			GRANT ALL ON ${MYSQL_DATABASE}.* TO ${MYSQL_USER}@'localhost';
			FLUSH PRIVILEGES;
			ALTER USER '${MYSQL_ROOT}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';
			Flush PRIVILEGES;"

mysqladmin -u $MYSQL_ROOT --password=$MYSQL_ROOT_PASSWORD shutdown

fi

/usr/bin/mysqld_safe --user=mysql --datadir='/var/lib/mysql' --skip-networking=0