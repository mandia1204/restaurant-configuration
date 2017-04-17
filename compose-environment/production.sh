#!/bin/bash

source compose-environment/common.sh

#### web ####
export WEB_BUILD_DOCKERFILE_NAME=DockerFile-Prod
export EXPORT_VOLUM_SRC=../web-dist/
export WEB_COMMAND_PROD='/bin/bash -l bootstrap-production.sh'

#### nginx  ####
export NGINX_WEB_VOLUM_SRC=../web-dist/

#### dashboard ####
export DASHBOARD_BUILD_DOCKERFILE_NAME=DockerFile-Prod

#### security ####
export SECURITY_BUILD_DOCKERFILE_NAME=DockerFile-Prod

#### security_db  ####
export SECURITY_DB_PATH=../security-database/
