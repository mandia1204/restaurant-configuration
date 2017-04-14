#!/bin/bash

SO=${1}
SO=${SO^^}
SERVICE_NAME=${2}

source docker-compose-vars.sh $SO production

echo "-----------------REBUILDING IMAGE---------------------"
docker-compose -p restaurant -f docker-compose-prod.yml build ${SERVICE_NAME}

echo "-----------------RECREATING CONTAINER-----------------"
docker stop res_${SERVICE_NAME}
docker rm res_${SERVICE_NAME}

docker-compose -p restaurant -f docker-compose-prod.yml up -d

echo "-----------------DONE!--------------------------------"
