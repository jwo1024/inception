FROM alpine:3.16

RUN apk update && \
	apk upgrade && \
	apk add openrc && \
	apk add mysql && \
	apk add mysql-client

#RUN mariadb-install-db --user=mysql --datadir=/var/lib/mysql

#RUN mariadb-install-db --user=mysql --datadir=/var/lib/mysql

COPY ./script/mariadb.sh /tmp/mariadb.sh
COPY ./configure/my.cnf /tmp/my.cnf
COPY ./configure/mariadb-server.cnf /tmp/mariadb-server.cnf

#ENTRYPOINT [ "dumb-init", "--" ]
ENTRYPOINT [ "/bin/sh", "/tmp/mariadb.sh" ]

EXPOSE 3306
