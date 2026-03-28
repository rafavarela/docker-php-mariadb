#!/bin/bash

cd /var/www/html/digifolio

if [ ! -d "vendor" ]; then
  echo "Instalando dependencias con Composer..."
  composer install
fi

apache2-foreground