### a lab environment for Puppet Enterprise

## requirements
- [vagrant](https://www.vagrantup.com)
- [virtualbox](https://www.virtualbox.org) or vmware desktop and vagrant provider
- [vagrant-hosts plugin](https://github.com/adrienthebo/vagrant-hosts)
- [vagrant-auto_network plugin](https://github.com/adrienthebo/vagrant-auto_network)
- [vagrant-pe_build plugin](https://github.com/adrienthebo/vagrant-pe_build)
- an [r10k](https://github.com/adrienthebo/r10k) control repository in the `control` directory

## usage
    $ git clone https://github.com/awaxa/lab-pe.git
    $ cd lab-pe
    $ git clone https://github.com/awaxa/control.git
    $ vagrant up
