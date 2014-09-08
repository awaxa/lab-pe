### a lab environment for Puppet Enterprise

## requirements
- [vagrant](https://www.vagrantup.com) version 1.5.0 or greater (see note)
- [virtualbox](https://www.virtualbox.org) or vmware desktop and vagrant provider
- [vagrant-hosts plugin](https://github.com/adrienthebo/vagrant-hosts)
- [vagrant-auto_network plugin](https://github.com/adrienthebo/vagrant-auto_network)
- [vagrant-pe_build plugin](https://github.com/adrienthebo/vagrant-pe_build)
- an [r10k](https://github.com/adrienthebo/r10k) control repository in the `control` directory

note: While untested, versions prior to 1.5.0 should work if the Vagrantfile is changed
to use non Vagrant Cloud boxes.  See commented box lines of the Vagrantfile for an example.

## usage
    $ git clone https://github.com/awaxa/lab-pe.git
    $ cd lab-pe
    $ git clone https://github.com/awaxa/control.git
    $ vagrant up
