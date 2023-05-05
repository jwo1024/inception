# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jiwolee <jiwolee@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/21 19:14:54 by jiwolee           #+#    #+#              #
#    Updated: 2023/05/05 21:55:35 by jiwolee          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

COMPOSE_YML = ./srcs/docker-compose.yml

VOLUME_PATH =  /home/jiwolee/data

all: $(NAME)

$(NAME):
	mkdir -p $(VOLUME_PATH)/mariadb/
	mkdir -p $(VOLUME_PATH)/wordpress/
	sudo sh -c 'echo "127.0.0.1 jiwolee.42.fr" > /etc/hosts'
	sudo docker-compose -f $(COMPOSE_YML) up

up: $(NAME)
	sudo docker-compose -f $(COMPOSE_YML) up

down:
	sudo docker-compose -f $(COMPOSE_YML) down

clean: down
	sudo docker stop $(shell sudo docker ps -qa); \
	sudo docker rm -f $(shell sudo docker ps -qa); \
	sudo docker rmi -f $(shell sudo docker image ls -qa);

fclean: down
	sudo docker stop $(shell sudo docker ps -qa); \
	sudo docker rm -f $(shell sudo docker ps -qa); \
	sudo docker rmi -f $(shell sudo docker image ls -qa); \
	sudo docker volume rm $(shell sudo docker volume ls -q); \
	sudo docker network rm $(shell sudo docker network ls -q);

clear_volumes:
	sudo rm -rf $(VOLUME_PATH)/*

re: fclean all

.PHONY: all up down clean fclean re clear_volumes