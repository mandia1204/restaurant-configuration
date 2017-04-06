#!/bin/bash

DEV_ENV_CONSTANT=DEV
UNIX_CONSTANT=UNIX
WINDOWS_CONSTANT=WINDOWS

SO=${1:-$UNIX_CONSTANT}
SO=${SO^^}
ENVIRONMENT=${2:-$DEV_ENV_CONSTANT}
ENVIRONMENT=${ENVIRONMENT^^}

if [ $WINDOWS_CONSTANT == $SO ]
then
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-windows
else
  export VAR_NGINX_DOCKERFILE_NAME=Dockerfile-unix
fi

read -p "Are you sure you want to build docker-compose in '$ENVIRONMENT' for $SO (y/[n])?" -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	exit 1
fi

if [ $ENVIRONMENT == "DEV" ]
then
  source docker-compose-up-dev.sh $SO
else
  source docker-compose-up-prod.sh $SO
fi

echo "DONE!"
