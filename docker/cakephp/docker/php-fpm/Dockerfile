FROM php:fpm

ADD php.ini /usr/local/etc/php/conf.d/php.ini

RUN apt-get update \
  && apt-get install -y libmemcached-dev g++ libicu-dev zlib1g-dev \
  && docker-php-ext-install pdo_mysql \
  && docker-php-ext-install mysqli \
  && docker-php-ext-install intl \
  && pecl install memcached-3.0.4 \
  && docker-php-ext-enable memcached opcache intl