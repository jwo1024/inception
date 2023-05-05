FROM alpine:3.16

COPY ./script/mariadb.sh /tmp/mariadb.sh

RUN apk update && \
	apk upgrade && \
	apk add openrc && \
	apk add mysql && \
	apk add mysql-client && \
	apk add dumb-init

RUN chmod +x /tmp/mariadb.sh

ENTRYPOINT [ "/usr/bin/dumb-init", "--", "/tmp/mariadb.sh" ]

EXPOSE 3306
