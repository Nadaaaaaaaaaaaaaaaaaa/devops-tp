#!/bin/bash

# URL de l'application déployée
APP_URL="http://localhost:5000"

# Effectuer une requête GET à l'application
response=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)

# Vérifier la réponse
if [ "$response" -eq 200 ]; then
    echo "App is up and running!"
else
    echo "App is not responding. HTTP status code: $response"
    exit 1
fi
