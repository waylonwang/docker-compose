#! /bin/sh

docker network create pub_vpn
docker-compose -p vpn_service -f vpn.yml up -d
