#!/bin/bash

source compose-environment/common.sh

#### web ####
export WEB_BUILD_DOCKERFILE_NAME=DockerFile
export WEB_PORT=3000:9000
export WEB_VOLUM_SRC=../../../restaurant-frontend/
export WEB_COMMAND='/bin/bash -l bootstrap.sh'

#### nginx  ####

#### dashboard ####
export DASHBOARD_BUILD_DOCKERFILE_NAME=DockerFile

#### security ####
export SECURITY_BUILD_DOCKERFILE_NAME=DockerFile
export SECURITY_VOLUM_SRC=../restaurant-security/src/

#### security_db  ####
