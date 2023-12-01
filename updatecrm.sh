#!/bin/sh
echo "update"

echo "git pull"
git pull

echo "docker build image"
docker build -t delore23/api-zap-alphaville:latest .

echo "go to delore-crm-srv"
cd
cd delore-crm-srv/

echo "restart docker compose"
docker-compose restart

echo "fim :)"