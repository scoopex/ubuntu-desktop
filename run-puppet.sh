#!/bin/bash
set -x

cd /etc/puppetlabs/puppet/
sudo librarian-puppet install
sudo puppet apply --modulepath /etc/puppetlabs/puppet/modules/ /etc/puppetlabs/puppet/modules/ubuntudesktop/manifests/local.pp  --test $@

