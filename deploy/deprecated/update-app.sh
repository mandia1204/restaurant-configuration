#!/bin/bash
set -e

while getopts a:t: option 
do 
 case "${option}" 
 in 
 a) APP_NAME=${OPTARG};; 
 t) IMAGE_TAG=${OPTARG};;
 esac 
done

cd /restaurant/deploy
source $APP_NAME-vars.sh

IMAGE_NAME=$IMAGE_REPO_NAME:$IMAGE_TAG
kubectl set image deployment/$DEPLOYMENT_NAME $CONTAINER_NAME=$IMAGE_NAME