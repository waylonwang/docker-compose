#! /bin/sh

docker network inspect base &>/dev/null || docker network create --driver bridge base
docker-compose -p base_service -f base.yml up -d
