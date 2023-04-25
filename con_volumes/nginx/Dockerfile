FROM alpine:3.16

RUN apk update && \
	apk upgrade && \
	apk add nginx && \
	apk add openssl && \
	apk add dumb-init

#RUN adduser -D -g 'www' www && \
#	mkdir /www && \
#	chown -R www:www /var/lib/nginx && \
#	chown -R www:www /www

COPY ./configure/default.conf /etc/nginx/conf.d/default.conf
COPY ./configure/nginx.conf	/etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443

ENTRYPOINT [ "dumb-init", "--" ]
CMD ["nginx", "-g", "daemon off;"]

# https://wiki.alpinelinux.org/wiki/Nginx
# mkdir /www
# chown -R www:www /var/lib/nginx
# chown -R www:www /www