#!/bin/sh
echo "update"

echo "git pull"
git pull

echo "docker stop"
docker stop whatsapp-api-nodejs_apizapalphaville_1 -t 0

echo "docker build image"
docker build -t delore23/api-zap-alphaville:latest .

echo "docker rm"
docker container rm whatsapp-api-nodejs_apizapalphaville_1

echo "go to whatsapp-api-nodejs"
cd
cd whatsapp-api-nodejs/

echo "restart docker compose"
docker-compose up -d

echo "fim :)"