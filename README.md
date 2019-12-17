# Background Jobs in Rails - Example

This Rails project is a complement to the slides given during the class regarding background workers in Rails (MEI.IoT/IPT - ES).

It uses sidekiq and also open letter and mailcatcher to demo the active mailer module.

## Installation

The project uses Vagrant to provision the development env. It starts with a base box from jadesystems but updates it to use Rails 6.x. In order to use this under Windows (host), you need to run the console (e.g., Git Bash) as an administrator.

With VirtualBox 6.x and Vagrant 2.x installed, just run:
```bash
vagrant up # to start and provision the vm.
vagrant ssh
vagrant halt # to shutdown the dev. env.
```

## Usage

Inside the VM just start the rails project as usual
```bash
cd /vagrant
rails s -b 0.0.0.0
bundle exec sidekiq
```