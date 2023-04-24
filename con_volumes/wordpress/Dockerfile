FROM alpine:3.16

COPY ./configure/www.conf /tmp/www.conf
COPY ./configure/wp-config.php /tmp/wp-config.php
COPY ./wordpress.sh /tmp/wordpress.sh

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

RUN chmod +x /tmp/wordpress.sh

CMD [ "/bin/sh", "/tmp/wordpress.sh"]
#ENTRYPOINT



#CMD ["/usr/sbin/php8-fpm", "-R", "-F"]
#WORDIR /var/www/html
#dum_init



EXPOSE 9000

#WORKDIR /var/www/html


