#! /bin/sh

docker network create --driver bridge pub_vpn || true
docker-compose -p vpn_service -f vpn.yml up -d
