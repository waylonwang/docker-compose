#! /bin/sh

source <(curl -s https://raw.githubusercontent.com/waylonwang/sh-scripts/master/lib/check_docker_env.sh)

docker network inspect base &>/dev/null || docker network create --driver bridge base

if [ "$(get_os)" = "raspbian" ]; then
  docker-compose -p base_service -f base_raspbian.yml up -d
else
  docker-compose -p base_service -f base.yml up -d
fi
