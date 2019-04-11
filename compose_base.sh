#! /bin/bash

# 获取当前操作系统名称
# 输入: 无
# 输出: 操作系统名称 debian|ubuntu|devuan|centos|fedora|rhel|raspbian
function get_os()
{
  source /etc/os-release
  echo $ID
}

docker network inspect base &>/dev/null || docker network create --driver bridge base

if [ "$(get_os)" = "raspbian" ]; then
  docker-compose -p base_service -f base_raspbian.yml up -d
else
  docker-compose -p base_service -f base.yml up -d
fi
