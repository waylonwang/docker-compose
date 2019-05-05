#! /bin/sh

docker network inspect pub_vpn > /dev/null 2>&1 || docker network create --driver bridge pub_vpn
docker-compose -p vpn_service -f vpn.yml up -d
