#!/bin/bash

docker compose -f deploy-compose.yml -f deploy-compose.override.yml down $1

if [ "$1" != "--volumes" ]
then
    RED='\033[0;31m'
    NC='\033[0m' # No Color
    echo -e "${RED}IMPORTANTE${NC}: Ejecutar con el parámetro --volumes para eliminar los volumenes y todos los datos asociados (reset de fabrica)"
fi
