sudo yum -y update
# Install PHP7.2
sudo yum -y install epel-release
sudo yum -y update epel-release
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo yum -y update remi-release
sudo yum -y --enablerepo=remi-php72,epel install php-fpm php-gd php-gmp php-zip php-mbstring php-mcrypt php-opcache php-pdo php-pear-MDB2-Driver-mysqli php-pecl-memcached php-pecl-msgpack php-xml php-devel php-gd php-intl
# mariadbの削除
sudo yum remove mariadb-libs
sudo rm -rf /var/lib/mysql/
# Install MySQL
sudo yum -y localinstall http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
sudo yum -y install mysql mysql-devel mysql-server mysql-utilities
# Install git httpd zip unzip
sudo yum -y install git httpd zip unzip
# Install composer
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# composer self-update && composer create-project --prefer-dist cakephp/app hoge
