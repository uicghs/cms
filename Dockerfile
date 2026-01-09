FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    default-mysql-client \
    libpng-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-configure gd \
    && docker-php-ext-install gd mysqli

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/
