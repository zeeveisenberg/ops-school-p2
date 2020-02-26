#!/bin/bash
#add fix to exercise5-server2 here
echo 'Host *' > /home/vagrant/.ssh/config
echo '   StrictHostKeyChecking no' >> /home/vagrant/.ssh/config
ssh-keygen -t rsa -N '' -C vagrant@server2 -f /home/vagrant/.ssh/id_rsa
chmod 644 /home/vagrant/.ssh/config
sudo chown vagrant:vagrant /home/vagrant/.ssh/config
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
sudo cat /vagrant/id_rsa_vagrant.pub >> /home/vagrant/.ssh/authorized_keys
