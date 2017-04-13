#!/bin/bash

echo "BUILDING PRODUCTION SH"

SO=${1}

source docker-compose-vars.sh $SO production

docker-compose -f docker-compose-prod.yml --project-name restaurant up -d
