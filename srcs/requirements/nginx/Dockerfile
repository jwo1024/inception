FROM alpine:3.16

RUN apk update && \
	apk upgrade && \
	apk add nginx && \
	apk add openssl

#RUN adduser -D -g 'www' www && \
#	mkdir /www && \
#	chown -R www:www /var/lib/nginx && \
#	chown -R www:www /www

COPY ./configure/default.conf /etc/nginx/conf.d/default.conf
COPY ./configure/nginx.conf	/etc/nginx/nginx.conf
COPY ./script/nginx.sh /tmp/nginx.sh


#EXPOSE 80
EXPOSE 443



#ENTRYPOINT [ "dumb-init", "--" ]
ENTRYPOINT [ "/bin/sh", "/tmp/nginx.sh" ]
#CMD ["nginx", "-g", "daemon off;"]

# https://wiki.alpinelinux.org/wiki/Nginx
# mkdir /www
# chown -R www:www /var/lib/nginx
# chown -R www:www /www