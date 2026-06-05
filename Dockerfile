FROM php:8.4-apache

# Instalar extensiones de PHP
RUN docker-php-ext-install pdo pdo_mysql

# Instalar herramientas necesarias y Composer
RUN apt-get update && apt-get install -y wget nano \
    && wget https://getcomposer.org/installer -O composer-setup.php \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && rm composer-setup.php

# Habilitar el módulo rewrite
RUN a2enmod rewrite

# Copiar configuración de PHP personalizada (límites de upload)
COPY php.ini /usr/local/etc/php/conf.d/custom.ini

# Copiar entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /var/www/html/digifolio

ENTRYPOINT ["/entrypoint.sh"]