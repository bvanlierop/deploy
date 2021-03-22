# Bart's Test Environment Files

This repository contains files and scripts that i've used to experiment and test
various projects.

## Virtual Machines

For experimentation with new tools and software you can grab the following VM's:

 - ./vm/ubuntu64/
 - ./vm/win10/

Each VM is configured with two network adapters. One is connected via NAT
to the Internet and the other is connected to an internal LAN `192.168.2.*`.
Also they are provisioned with basic software, settings and timezone UTC+1.

## Using a virtual machine

The VM's are defined using *[Vagrant](https://www.vagrantup.com)* provisioning
software. This tool reads the `Vagrantfile` and makes sure it's download, booted,
and configured as specified. Follow these steps to run it:

 1. Install `Oracle VirtualBox`
 2. Install `Vagrant`
 3. Create a new folder somewhere on your system (e.g. `C:\my_vm`)
 4. Copy the `Vagrantfile` to this folder
 5. Run `vagrant up`
 6. Wait until it's booted (check VirtualBox VM list if in doubt)
 7. Access the VM using `vagrant ssh`
