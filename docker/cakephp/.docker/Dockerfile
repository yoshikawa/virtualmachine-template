FROM php:fpm

RUN apt-get update \
 && apt-get install -y \
        sudo \
        curl \
        git \
        unzip \
        aptitude \
        mysql-client \
        build-essential \
        libicu-dev \
        icu-devtools \
  && docker-php-ext-install pdo_mysql \
  && docker-php-ext-install mysqli \
  && docker-php-ext-install mbstring \
  && docker-php-ext-install intl \
  && docker-php-ext-enable intl mbstring

RUN cd '/' \
 && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
 && php composer-setup.php \
 && php -r "unlink('composer-setup.php');" \
 && mv composer.phar /usr/local/bin/composer

 WORKDIR /app