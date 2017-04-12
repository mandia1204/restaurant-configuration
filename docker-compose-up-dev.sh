#!/bin/bash

echo "RUNNING DEVELOPMENT SH"
SO=${1}

if [ $SO == "WINDOWS" ]
then
  echo "setting nginx for windows docker file"
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-windows
else
  echo "setting nginx for linux docker file"
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-unix
fi

source compose-environment/development.sh

if [ $SO == "WINDOWS" ]
then
  echo "setting windows specific variables"
  source compose-environment/windows-env.sh
fi

docker-compose -f docker-compose.yml --project-name restaurant up -d
