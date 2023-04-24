
CREATE DATABASE my_wp_db;


CREATE USER 'mariadb'@'%' IDENTIFIED BY 'mypassword';
GRANT ALL ON my_wp_db.* TO 'mariadb'@'%';

FLUSH PRIVILEGES;



/*
use mysql;
flush privileges;
alter user 'root'@'localhost' identified by '$DB_ROOT_PASSWORD';
flush privileges;
create database $DB_NAME;
create user '$DB_USER'@'%' identified by '$DB_USER_PASSWORD';
grant all privileges on $DB_NAME.* to '$DB_USER'@'%';
flush privileges;
*/