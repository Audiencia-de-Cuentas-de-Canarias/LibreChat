#!/bin/bash

# Para la correcto despliegue en el entorno de producción, se deben crear y personalizar los siguientes ficheros:
#    - ./.env
#    - ./client/nginx-production.conf
#    - ./client/tls/ACC-RootCA.crt
#    - ./client/tls/virgo.crt
#    - ./client/tls/virgo.key
#    - ./deploy-compose.override.yml
#    - librechat.yml

docker compose -f deploy-compose.yml -f deploy-compose.override.yml up --build -d