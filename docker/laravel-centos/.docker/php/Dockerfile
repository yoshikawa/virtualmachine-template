FROM centos:latest

WORKDIR /app

RUN  yum -y update \
  && yum -y install epel-release \
  && yum -y install unzip \
  && yum -y localinstall http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
  && yum -y install --enablerepo=remi-php73 \
php php-mysql php-mbstring php-fpm php-zip php-dom \
  && yum clean all \
  && systemctl enable php-fpm

RUN cd '/' \
  && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php -r "if (hash_file('SHA384', 'composer-setup.php') !== trim(file_get_contents('https://composer.github.io/installer.sig'))) { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
  && rm composer-setup.php

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin

RUN composer global require "laravel/installer"
