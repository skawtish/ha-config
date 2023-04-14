#!/bin/sh
# update system and docker containers

apt update
apt full-upgrade -y
apt autoremove -y

docker-compose build
docker-compose pull
docker-compose up --build -d
docker image prune -af
docker volume prune -f
