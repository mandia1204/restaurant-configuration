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

BUILD_IMAGE_PATH=/home/jenkins/restaurant

cd $BUILD_IMAGE_PATH/deploy
source $APP_NAME-vars.sh

IMAGE_NAME=$IMAGE_REPO_NAME:$IMAGE_TAG #reponame in docker hub.
docker build -t $IMAGE_NAME $BUILD_IMAGE_PATH/$APP_NAME

#publish the image
docker push $IMAGE_NAME