FROM alpine:3.16

RUN apk update && \
	apk upgrade && \
	apk add php8 && \
	apk add php8-fpm && \
	apk add php8-phar &&\
	apk add php8-json && \
	apk add php8-exif && \
	apk add php8-mysqli && \
	apk add php8-mysqlnd && \
	apk add mariadb-client && \
	apk add curl && \
	apk add wget


COPY ./configure/www.conf /tmp/www.conf
COPY ./configure/wp-config.php /tmp/wp-config.php
COPY ./wordpress.sh /tmp/wordpress.sh

#CMD ["/bin/sh", "/tmp/wordpress.sh"]
#CMD ["/usr/sbin/php8-fpm", "-R", "-F"]

#WORDIR /var/www/html


EXPOSE 9000

#WORKDIR /var/www/html
