VirtualMachine-Template
====
Using Vagrant or Docker to run various applications.

## Description
yoshikawa/virtualmachine-template -　Using Vagrant to run various applications.

## Requirements
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Usage
if you use Macintosh
1. `brew cask install virtualbox vagrant`
2. `vagrant plugin install vagrant-omnibus vagrant-vbguest sahara vagrant-share vagrant-proxyconf`

## Install
- Make sure you've installed Requirements.
- Open terminal, `cd` to working directory and clone the project `git clone git://github.com/yoshikawa/virtualmachine-template.git`
- Place application source code into webroot folder
- To start the virtual machine again execute `vagrant up`
- To turn off virtual machine execute `vagrant halt`
- To clean up execute `vagrant destroy`

## Contribution
1. Fork it ( https://github.com/yoshikawa/virtualmachine-template/fork)
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create new Pull Request

## Licence

[MIT](https://github.com/yoshikawa/virtualmachine-template/blob/master/LICENSE)


## Author

[YoshikawaTaiki](https://github.com/yoshikawa)
