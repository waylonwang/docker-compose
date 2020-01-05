#! /bin/bash
# 如环境变量GIT_RAW_SH未设置则默认设为github地址
[ -z ${GIT_RAW_SH} ] && GIT_RAW_SH="https://raw.githubusercontent.com/waylonwang/sh-scripts/master"
# 变量GIT_RAW_SH设置完成
source <(curl -s ${GIT_RAW_SH}/lib/check_docker_env.sh)

docker network inspect base > /dev/null 2>&1 || docker network create --driver bridge base

if [ "$(get_os)" = "raspbian" ]; then
  docker-compose -p base_service -f php_raspbian.yml up -d
else
  docker-compose -p base_service -f php.yml up -d
fi
