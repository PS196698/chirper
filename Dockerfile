FROM php:8.2-apache

WORKDIR /chirper

RUN docker-php-ext-install pdo pdo_mysql mysqli

COPY . .

EXPOSE 80

CMD ["apache2-foreground"]
