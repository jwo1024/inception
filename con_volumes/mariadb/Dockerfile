FROM alpine:3.16

RUN apk update && \
	apk upgrade && \
	apk add openrc && \
	apk add mysql && \
	apk add mysql-client && \
	apk add dumb-init

COPY ./configure/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY ./configure/set_db.sql /tmp/set_db.sql
COPY ./mariadb.sh /tmp/mariadb.sh

ENTRYPOINT [ "dumb-init", "--" ]
CMD [ "/bin/sh", "/tmp/mariadb.sh" ]


#RUN mysql_install_db --user=mysql && \
#    chown -R mysql:mysql /var/lib/mysql && \
#    /usr/bin/mysqld --user=mysql --datadir='/var/lib/mysql' --skip-networking=0 --init-file=/tmp/set_db.sql

#CMD ["mysqld_safe", "--datadir='/var/lib/mysql'", "--skip-networking=0"]
#CMD ["mysqld"]

EXPOSE 3306
