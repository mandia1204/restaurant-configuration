#!/bin/bash

echo "RUNNING PRODUCTION SH"
SO=${1}

if [ $SO == "WINDOWS" ]
then
  echo "setting nginx for windows docker file"
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-windows-prod
else
  echo "setting nginx for linux docker file"
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-unix-prod
fi

source compose-environment/production.sh

if [ $SO == "WINDOWS" ]
then
  echo "setting windows specific variables"
  source compose-environment/windows-env.sh
fi

docker-compose -f docker-compose-prod.yml --project-name restaurant up -d
