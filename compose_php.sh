#! /bin/bash

source <(curl -s https://raw.githubusercontent.com/waylonwang/sh-scripts/master/lib/check_docker_env.sh)

docker network inspect base > /dev/null 2>&1 || docker network create --driver bridge base

if [ "$(get_os)" = "raspbian" ]; then
  docker-compose -p base_service -f php_raspbian.yml up -d
else
  docker-compose -p base_service -f php.yml up -d
fi
