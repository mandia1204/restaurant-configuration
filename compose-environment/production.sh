#!/bin/bash

source compose-environment/common.sh

#### web ####
export WEB_BUILD_DOCKERFILE_NAME=DockerFile
#TODO: WE DON'T NEED THIS FOR PROD, CHECK
export WEB_PORT=3000:9000
export WEB_VOLUM_SRC=../../../restaurant-frontend/
export WEB_COMMAND='/bin/bash -l bootstrap.sh'

#### nginx  ####
export NGINX_WEB_VOLUM_SRC=../restaurant-frontend/export/

#### dashboard ####
export DASHBOARD_BUILD_DOCKERFILE_NAME=DockerFile-Prod

#### security ####
export SECURITY_BUILD_DOCKERFILE_NAME=DockerFile-Prod

#### security_db  ####
