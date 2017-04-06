#!/bin/bash

#### web ####
export WEB_BUILD_DOCKERFILE_CTX=../../../restaurant-frontend/
export WEB_CONTAINER_NAME=res_web

#### nginx  ####
export NGINX_BUILD_DOCKERFILE=../../nginx/
export NGINX_DOCKERFILE_NAME=$VAR_NGINX_DOCKERFILE_NAME
export NGINX_CONTAINER_NAME=res_nginx
export NGINX_PORT=8443:443

#### dashboard ####
export DASHBOARD_BUILD_DOCKERFILE_CTX=../../../restaurant-dashboard-backend/
export DASHBOARD_CONTAINER_NAME=res_dashboard
export DASHBOARD_PORT=5500:5000

#### security ####
export SECURITY_BUILD_DOCKERFILE_CTX=../../../restaurant-security
export SECURITY_CONTAINER_NAME=res_security
export SECURITY_PORT=3002:3001

#### security_db  ####
export SECURITY_DB_CONTAINER_NAME=res_security_db
export SECURITY_DB_PORT=27018:27017
