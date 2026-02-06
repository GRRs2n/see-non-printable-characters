FROM php:8.3-apache

RUN apt-get update && apt-get install -y libonig-dev && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install mbstring

COPY view-chars.php /var/www/html/index.php

EXPOSE 80
