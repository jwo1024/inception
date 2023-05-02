#!/bin/sh

set -e

#cp -f /tmp/my.cnf /etc/my.cnf

mariadb-install-db --user=mysql --datadir=/var/lib/mysql

if [ ! -e /var/lib/mysql/${MYSQL_DATABASE} ]; then

#cp -f /tmp/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf


#cp -f /tmp/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

/usr/bin/mysqld_safe --user=mysql --datadir=/var/lib/mysql &

sleep 3

mariadb -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};
 			CREATE USER IF NOT EXISTS ${MYSQL_USER}@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
			GRANT ALL ON ${MYSQL_DATABASE}.* TO ${MYSQL_USER}@'%';
			ALTER USER '${MYSQL_ROOT}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';
			FLUSH PRIVILEGES;"

mysqladmin -u $MYSQL_ROOT --password=$MYSQL_ROOT_PASSWORD shutdown

#cp /run/mysqld/mysqld.sock /var/lib/mysqld/mysqld.sock
#else
#cp /var/lib/mysqld/mysqld.sock /run/mysqld/mysqld.sock

fi

/usr/bin/mysqld_safe --user=mysql --datadir='/var/lib/mysql' --skip-networking=0