# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jiwolee <jiwolee@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/21 19:14:54 by jiwolee           #+#    #+#              #
#    Updated: 2023/04/24 22:06:05 by jiwolee          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE = docker-compose
COMPOSE_YML = docker-compose.yml

IMAGES = inception-wordpress \
		 inception-nginx \
		 mariadb

all: 
	$(DOCKER_COMPOSE) up

down:
	docker compose down

clean: down
	rm -rf ./mount_volumes/* 
	docker rmi $(shell docker image ls -qa)

fclean: down
	rm -rf ./mount_volumes/* 
	docker rm -f $(shell docker ps -qa)
	docker rmi $(shell docker image ls -qa)
