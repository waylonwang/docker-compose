#! /bin/sh

docker network inspect pub_db &>/dev/null || docker network create --driver bridge pub_db
docker-compose -p db_service -f db.yml up -d
