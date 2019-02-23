#! /bin/sh

docker network create base
docker-compose -p base_service -f base.yml up -d
