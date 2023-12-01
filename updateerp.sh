#!/bin/sh
echo "update"

echo "git pull"
git pull

echo "docker build image"
docker build -t delore23/api-zap-alphaville:latest .

echo "go to delore-erp-srv"
cd
cd delore-erp-srv/

echo "restart docker compose"
docker-compose restart

echo "fim :)"