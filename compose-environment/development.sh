#!/bin/bash

#### web ####
export WEB_BUILD_DOCKERFILE=../../../restaurant-frontend/
export WEB_CONTAINER_NAME=res_web
export WEB_PORT=3000:9000
export WEB_VOLUM_SRC=../../../restaurant-frontend/
export WEB_COMMAND='/bin/bash -l bootstrap.sh'

#### nginx  ####
export NGINX_BUILD_DOCKERFILE=../../nginx/
export NGINX_DOCKERFILE_NAME=$VAR_NGINX_DOCKERFILE_NAME
export NGINX_CONTAINER_NAME=res_nginx
export NGINX_PORT=8443:443

#### dashboard ####
export DASHBOARD_BUILD_DOCKERFILE=../../../restaurant-dashboard-backend/
export DASHBOARD_CONTAINER_NAME=res_dashboard
export DASHBOARD_PORT=5500:5000
