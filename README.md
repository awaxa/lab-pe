### a lab environment for Puppet Enterprise

## requirements
- [vagrant](https://www.vagrantup.com)
- [virtualbox](https://www.virtualbox.org) or vmware desktop and vagrant provider
- [oscar vagrant plugin](https://github.com/adrienthebo/oscar)
- an [r10k](https://github.com/adrienthebo/r10k) control repository in the `control` directory

## usage
    $ git clone https://github.com/awaxa/lab-pe.git
    $ cd lab-pe
    $ git clone https://github.com/awaxa/lab-pe_puppet-control.git control
    $ vagrant up
