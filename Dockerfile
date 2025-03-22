FROM php:7.3.1-apache
RUN docker-php-ext-install pdo pdo_mysql

# Actualizar los repositorios para usar el archivo de Debian
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list \
    && echo "deb http://archive.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list

# Instalar herramientas necesarias y Composer
RUN apt-get update && apt-get install -y wget nano \
    && wget https://getcomposer.org/installer -O composer-setup.php \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && rm composer-setup.php

# Habilitar el módulo rewrite
RUN a2enmod rewrite

# Copiar el proyecto y restaurar las dependencias
WORKDIR /var/www/html/digifolio
COPY php/digifolio /var/www/html/digifolio
RUN composer install