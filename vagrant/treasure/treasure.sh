sudo yum -y update
# Install Other Repo
sudo yum -y install epel-release
sudo yum -y update epel-release
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo yum -y update remi-release
sudo yum -y install golang
# Delete mariadb
sudo yum remove mariadb-libs
sudo rm -rf /var/lib/mysql/
# Install MySQL
sudo yum -y localinstall http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
sudo yum -y install mysql mysql-devel mysql-server mysql-utilities
# Install git httpd zip unzip
sudo yum -y install git httpd zip unzip
