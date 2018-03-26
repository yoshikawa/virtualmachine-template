Vagrant-Template
====
Using Vagrant to run various applications.

## Description
YoshikawaTaiki/vagrant-template -　Using Vagrant to run various applications.

## Requirements
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Usage
if you use Macintosh
1. `brew cask install virtualbox vagrant`
2. `vagrant plugin install vagrant-omnibus vagrant-vbguest sahara vagrant-share vagrant-proxyconf`
3. `vagrant init centos/7`
4. `vagrant up default`
5. `vagrant ssh default`

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


## Author

[YoshikawaTaiki](https://github.com/YoshikawaTaiki)
