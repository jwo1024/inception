FROM alpine:3.16

RUN apk update && \
	apk upgrade
RUN apk add php8 && \
	apk add php8-phar &&\
	apk add php8-json && \
	apk add php8-exif && \
	apk add php8-mysqli && \
	apk add php8-mysqlnd && \
	apk add mariadb-client && \
	apk add curl && \
	apk add wget
#	apk add iputils

RUN wget https://wordpress.org/latest.tar.gz && \
	tar -xvf latest.tar.gz && \
	


EXPOSE 9000



