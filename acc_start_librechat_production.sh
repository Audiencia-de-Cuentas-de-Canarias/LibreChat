#!/bin/bash

# Para la correcto despliegue en el entorno de producción, se deben crear y personalizar los siguientes ficheros:
#    - ./.env
#    - ./client/nginx-production.conf
#    - ./client/tls/ACC-RootCA.crt
#    - ./client/tls/virgo.crt
#    - ./client/tls/virgo.key
#    - ./deploy-compose.override.yml
#    - librechat.yml

if [ "$1" != "--build" ]
then
    RED='\033[0;31m'
    NC='\033[0m' # No Color
    echo -n -e "${RED}IMPORTANTE${NC}: Ejecutar con el parámetro --build para regenerar la imagen docker si hay cambios en el código"
    for i in $(seq 3); do
        echo -n "."
        sleep 1
    done
    echo ""
fi

docker compose -f deploy-compose.yml -f deploy-compose.override.yml up -d $1