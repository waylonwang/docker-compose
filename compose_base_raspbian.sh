#! /bin/bash

docker network inspect base > /dev/null 2>&1 || docker network create --driver bridge base
docker-compose -p base_service -f base_raspbian.yml up -d
