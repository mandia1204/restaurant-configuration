#!/bin/bash

UNIX_CONSTANT=UNIX
WINDOWS_CONSTANT=WINDOWS
SO=${1:-$UNIX_CONSTANT}
SO=${SO^^}

if [ $WINDOWS_CONSTANT == $SO ]
then
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-windows
else
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-unix
	SO=$UNIX_CONSTANT
fi

read -p "Are you sure you want to build docker-compose for $SO (y/[n])?" -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	exit 1
fi

source compose-environment/development.sh

if [ $WINDOWS_CONSTANT == $SO ]
then
  echo "Windows variables set"
  source compose-environment/development-windows.sh
fi

docker-compose -f docker-compose.yml --project-name restaurant up -d
