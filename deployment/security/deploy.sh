#!/bin/bash
ROOT_PATH="/c/Users/marvin/Documents/Sistema Restaurant/deploy-src"
REPO_PATH="${ROOT_PATH}/restaurant-security"
#PROFILE_CD_REPO=/var/www/repos/brainy-production-setup/continuous-delivery/profile
#PROFILE_CD_REPO_PASTE=/var/www/repos/brainy-profile-backend/src/main/resources


cd $REPO_PATH
git checkout .
git pull origin master
#cd $PROFILE_CD_REPO
#cp files/application.yml $PROFILE_CD_REPO_PASTE
#docker restart profile
