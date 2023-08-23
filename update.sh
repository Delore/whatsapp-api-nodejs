#!/bin/sh
echo "update"

echo "git pull"
git pull

echo "docker stop"
docker stop delore-erp-srv_apizapalphaville_1 -t 0

echo "docker build image"
docker build -t delore23/api-zap-alphaville:latest .

echo "docker rm"
docker container rm delore-erp-srv_apizapalphaville_1

echo "go to delore-erp-srv"
cd
cd delore-erp-srv/

echo "restart docker compose"
docker-compose up -d

echo "fim :)"