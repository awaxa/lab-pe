#!/bin/sh

/opt/puppet/bin/puppet resource package git ensure=present
/usr/bin/git clone /vagrant/control /tmp/control
/opt/puppet/bin/gem install r10k --no-rdoc --no-ri -v 1.3.0
PUPPETFILE=/tmp/control/Puppetfile PUPPETFILE_DIR=/tmp/control/modules /opt/puppet/bin/r10k puppetfile install
/opt/puppet/bin/puppet apply --exec 'include ::role::puppet::master' --modulepath='/tmp/control/site:/tmp/control/modules:/opt/puppet/share/puppet/modules'
/opt/puppet/bin/r10k deploy environment -pv
/opt/puppet/bin/rake -f /opt/puppet/share/puppet-dashboard/Rakefile RAILS_ENV=production nodeclass:add['role::puppet::master'] node:addclass['master','role::puppet::master']
/opt/puppet/bin/puppet agent --test
