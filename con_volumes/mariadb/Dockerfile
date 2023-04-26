FROM alpine:3.16

RUN apk update && \
	apk upgrade && \
	apk add openrc && \
	apk add mysql && \
	apk add mysql-client && \
	apk add dumb-init

COPY ./script/mariadb.sh /tmp/mariadb.sh

ENTRYPOINT [ "dumb-init", "--" ]
CMD [ "/bin/sh", "/tmp/mariadb.sh" ]

EXPOSE 3306
