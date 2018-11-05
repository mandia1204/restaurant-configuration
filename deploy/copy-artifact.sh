#!/bin/bash
set -e

echo "Archiving last artifact..."
while getopts a:w: option 
do 
 case "${option}" 
 in 
 a) APP_NAME=${OPTARG};;
 w) WS_PATH=${OPTARG};;
 esac 
done

APP_PATH=$HOME/restaurant/$APP_NAME
FILE_NAME="`date '+%Y%m%d%H%M%S'`.tar.gz"

echo "Filename: $FILE_NAME" 

tar -czvf $FILE_NAME $APP_PATH/dist
mv $FILE_NAME $APP_PATH/backup
echo "Archiving finished!"

echo "Copying new artifact..."

rm -rf $APP_PATH/dist
mv $WS_PATH/dist $APP_PATH
echo "Artifact copied!"

