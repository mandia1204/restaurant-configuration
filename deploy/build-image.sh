#!/bin/bash
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

IMAGE_NAME=$IMAGE_REPO_NAME:$IMAGE_TAG #reponame in docker hub.
docker build -t $IMAGE_NAME /restaurant/$APP_NAME

#publish the image
docker push $IMAGE_NAME