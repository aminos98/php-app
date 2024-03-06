FROM php:7.2-apache

WORKDIR /var/www/html

COPY ./admin_panel /var/www/html

RUN apt-get update && apt upgrade -y

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli

EXPOSE 80

CMD ["apache2-foreground"]
