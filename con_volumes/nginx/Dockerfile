FROM alpine:3.16

RUN apk update && \
	apk add nginx

COPY ./configure/default.conf /etc/nginx/conf.d/default.conf
COPY ./configure/nginx.conf	/etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
