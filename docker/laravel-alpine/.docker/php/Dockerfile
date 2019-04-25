FROM php:7-fpm-alpine

WORKDIR /app

RUN apk update \
  && apk add --no-cache git vim unzip tzdata \
  && apk add --update --no-cache freetype-dev libjpeg-turbo-dev libmcrypt-dev libpng-dev libzip-dev \
  && docker-php-ext-install zip pdo_mysql mysqli mbstring gd iconv \
  && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
  && apk del tzdata \
  && apk add --no-cache composer \
  && rm -rf /var/cache/apk/*

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin

RUN composer global require "laravel/installer"
