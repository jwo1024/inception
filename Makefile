# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jiwolee <jiwolee@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/21 19:14:54 by jiwolee           #+#    #+#              #
#    Updated: 2023/04/25 16:16:36 by jiwolee          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE = docker-compose
COMPOSE_YML = docker-compose.yml

MOUNT_VOLUMES = ./mount_volumes

all: 
	$(DOCKER_COMPOSE) up

down:
	$(DOCKER_COMPOSE) down

clean: down
	rm -rf $(MOUNT_VOLUMES)/* 
	docker rmi $(shell docker image ls -qa)

fclean: down
	rm -rf $(MOUNT_VOLUMES)/*  | \
	docker rm -f $(shell docker ps -qa) | \
	docker rmi $(shell docker image ls -qa)
