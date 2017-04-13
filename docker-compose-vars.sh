#!/bin/bash

SO=${1}
ENV=${2}

if [ $SO == "WINDOWS" ]
then
  echo "setting nginx for windows docker file"
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-windows
else
  echo "setting nginx for linux docker file"
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-unix
fi

source compose-environment/${ENV}.sh

if [ $SO == "WINDOWS" ]
then
  echo "setting windows specific variables"
  source compose-environment/windows-env.sh
fi
