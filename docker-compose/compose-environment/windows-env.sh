#!/bin/bash

#To fix windows paths
export COMPOSE_CONVERT_WINDOWS_PATHS=1
#To fix /bin/bash location
export WEB_COMMAND="bash -l bootstrap.sh"
export WEB_COMMAND_PROD="bash -l bootstrap-production.sh"
