#!/bin/bash

source compose-environment/common.sh

#### nginx  ####
export NGINX_WEB_VOLUM_SRC=../restaurant-frontend/export/

#### dashboard ####
export DASHBOARD_BUILD_DOCKERFILE_NAME=DockerFile-Prod

#### security ####
export SECURITY_BUILD_DOCKERFILE_NAME=DockerFile-Prod

#### security_db  ####
