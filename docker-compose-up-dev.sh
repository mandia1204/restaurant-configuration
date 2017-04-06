#!/bin/bash

echo "RUNNING DEVELOPMENT SH"
SO=${1}

source compose-environment/development.sh

if [ $SO == "WINDOWS" ]
then
  echo "setting windows specific variables"
  source compose-environment/windows-env.sh
fi

docker-compose -f docker-compose.yml --project-name restaurant up -d
