Vagrant-Template-CakePHP
====
Using Vagrant to run CakePHP3.5.X.

## Description
YoshikawaTaiki/vagrant-template -　Using Vagrant to run CakePHP3.5.X. Install PHP7.2, MySQL5.7, Composer & Apache.

## Requirements
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Usage
if you use Macintosh
1. `brew cask install virtualbox vagrant`
2. `vagrant plugin install vagrant-omnibus vagrant-vbguest sahara vagrant-share vagrant-proxyconf`
3. `vagrant init centos/7`
4. `vagrant up default`
5. Setup MySQL
 - `systemctl start mysqld.service`
 - `cat /var/log/mysqld.log | grep "A temporary password"`  
 - `[Note] A temporary password is generated for root@localhost: XXXXXXXXXX` XXXXXXXXXX is a temporary password
 - mysql -uroot -p XXXXXXXX
 - `set password for root@localhost=password('TekitouniP@ss123');`

## Install
- Make sure you've installed Requirements.
- Open terminal, `cd` to working directory and clone the project `git clone git://github.com/YoshikawaTaiki/vagrant-template.git`
- Place application source code into webroot folder
- To turn off virtual machine execute `vagrant halt`
- To start the virtual machine again execute `vagrant up`
- To clean up execute `vagrant destroy`

## Contribution
1. Fork it ( https://github.com/Yoshikawataiki/vagrant-template/fork)
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create new Pull Request

## Licence

[MIT](https://github.com/YoshikawaTaiki/vagrant-template/blob/master/LICENSE)

## Reference
MySQL  
https://qiita.com/fantasista_21jp/items/59a69fc0746ded8601d4#%E8%B5%B7%E5%8B%95

## Author

[YoshikawaTaiki](https://github.com/YoshikawaTaiki)
