#!/bin/bash
#add fix to exercise5-server1 here
echo 'Host *' > /home/vagrant/.ssh/config
echo '   StrictHostKeyChecking no' >> /home/vagrant/.ssh/config
ssh-keygen -t rsa -N '' -C vagrant@server1 -f /home/vagrant/.ssh/id_rsa
chmod 644 /home/vagrant/.ssh/config
#chmod 600 /home/vagrant/.ssh/id_rsa
#chmod 644 /home/vagrant/.ssh/id_rsa.pub
sudo chown vagrant:vagrant /home/vagrant/.ssh/config
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/id_rsa_vagrant.pub
