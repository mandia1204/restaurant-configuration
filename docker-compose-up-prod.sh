#!/bin/bash

echo "RUNNING PRODUCTION SH"
SO=${1}

source compose-environment/production.sh

if [ $SO == "WINDOWS" ]
then
  echo "setting windows specific variables"
  source compose-environment/windows-env.sh
fi

docker-compose -f docker-compose-prod.yml --project-name restaurant up -d
