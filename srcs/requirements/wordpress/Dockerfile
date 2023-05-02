FROM alpine:3.16

COPY ./configure/www.conf /tmp/www.conf
COPY ./configure/wp-config.php /tmp/wp-config.php
COPY ./script/wordpress.sh /tmp/wordpress.sh

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

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp

RUN rm /etc/php8/php-fpm.d/www.conf && \
	cp -f /tmp/www.conf /etc/php8/php-fpm.d/www.conf
	


#ENTRYPOINT ["/usr/bin/dumb-init", "--", "/tmp/wordpress.sh"]

ENTRYPOINT ["/bin/sh", "/tmp/wordpress.sh"]
#CMD ["/usr/sbin/php8-fpm", "-R", "-F"]

EXPOSE 9000

WORKDIR /var/www/html
