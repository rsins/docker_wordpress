#!/bin/bash -
#===============================================================================
#
#        AUTHOR: Ravi Singh (rsins), 
#   DESCRIPTION: Start wordpress docker images
#
#  REQUIREMENTS: ---
#         NOTES: ---
#       CREATED: 09/11/2021 15:06:02
#      REVISION: ---
#===============================================================================

SCRIPT_FOLDER="$( cd "$( dirname "$0" )"; pwd -P )"   # Script Directory Path 
#set -o nounset                                        # Treat unset variables as an error

printf '> docker-compose -f stack.yml up'
docker-compose -f stack.yml up &

printf '* Docker containers are up now.\n'
printf '* Access wordpress UI : http://localhost:8080\n'
printf '* Access adminer   UI : http://localhost:8888\n'
printf '\n'
fg

