
mariadb-install-db --user=mysql --datadir=/var/lib/mysql

/usr/bin/mysqld_safe --user=mysql --datadir=/var/lib/mysql &

sleep 3

mariadb < /tmp/set_db.sql

mysqladmin -u root --password=$MYSQL_ROOT_PASSWORD shutdown

/usr/bin/mysqld --user=mysql --datadir='/var/lib/mysql' --skip-networking=0