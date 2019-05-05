#! /bin/sh

docker network inspect pub_db > /dev/null 2>&1 || docker network create --driver bridge pub_db
docker-compose -p db_service -f db.yml up -d
