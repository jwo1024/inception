FROM alpine:3.16

RUN apk update && \
	apk upgrade && \
	apk add openrc && \
	apk add mysql mysql-client

COPY ./configure/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf




EXPOSE 3306
