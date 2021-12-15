FROM php:7.3.25-fpm-buster

RUN apt-get update && apt-get install -y libmagickwand-dev --no-install-recommends

RUN pecl install imagick

RUN docker-php-ext-enable imagick
