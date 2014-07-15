#!/bin/sh

/opt/puppet/bin/puppet module install zack-r10k
/opt/puppet/bin/puppet apply --exec 'include ::profile::puppet::r10k' --modulepath='/vagrant/control/site:/etc/puppetlabs/puppet/modules:/opt/puppet/share/puppet/modules'
/opt/puppet/bin/r10k deploy environment -pv
/opt/puppet/bin/rake -f /opt/puppet/share/puppet-dashboard/Rakefile RAILS_ENV=production nodeclass:add['role::puppet::master'] node:addclass['master','role::puppet::master']
/opt/puppet/bin/puppet agent --test
