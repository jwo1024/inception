

mariadb-install-db --user=mysql --datadir=/var/lib/mysql

/usr/bin/mysqld_safe --user=mysql --datadir=/var/lib/mysql &

sleep 3

#mariadb < /tmp/set_db.sql
#mariadb -e "CREATE DATABASE ${MYSQL_DATABASE};"

mariadb -e "CREATE DATABASE ${MYSQL_DATABASE};
 			CREATE USER ${MYSQL_USER}@'mywp.mynet' IDENTIFIED BY '${MYSQL_PASSWORD}';
			GRANT ALL ON ${MYSQL_DATABASE}.* TO ${MYSQL_USER}@'mywp.mynet';
			FLUSH PRIVILEGES;"


mysqladmin -u root --password=$MYSQL_ROOT_PASSWORD shutdown

/usr/bin/mysqld --user=mysql --datadir='/var/lib/mysql' --skip-networking=0