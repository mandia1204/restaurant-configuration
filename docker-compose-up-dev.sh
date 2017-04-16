#!/bin/bash

echo "RUNNING DEVELOPMENT SH"

SO=${1}

source docker-compose-vars.sh $SO development

docker-compose -f docker-compose.yml --project-name restaurant up -d
