#!/bin/sh
echo "update"

echo "git pull"
git pull

echo "docker stop"
docker stop delore-crm-srv_apizapalphaville_1 -t 0

echo "docker build image"
docker build -t delore23/api-zap-alphaville:latest .

echo "docker rm"
docker container rm delore-crm-srv_apizapalphaville_1

echo "go to delore-crm-srv"
cd
cd delore-crm-srv/

echo "restart docker compose"
docker-compose up -d

echo "fim :)"