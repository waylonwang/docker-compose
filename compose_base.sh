#! /bin/sh

docker network create --driver bridge base || true
docker-compose -p base_service -f base.yml up -d
