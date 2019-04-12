#! /bin/bash

docker network inspect base &>/dev/null || docker network create --driver bridge base
docker-compose -p base_service -f base_raspbian.yml up -d
