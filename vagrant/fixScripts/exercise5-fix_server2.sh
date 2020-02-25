#!/bin/bash
#add fix to exercise5-server2 here
su vagrant
echo 'Host *' > /home/vagrant/.ssh/config
echo '   StrictHostKeyChecking no' >> /home/vagrant/.ssh/config
ssh-keygen -t rsa -N '' -f /home/vagrant/.ssh/id_rsa
#chmod 644 /home/vagrant/.ssh/config
#chmod 644 /home/vagrant/.ssh/id_rsa
#chmod 644 /home/vagrant/.ssh/id_rsa.pub
#chown vagrant:vagrant /home/vagrant/.ssh/config
#chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
#chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub

#ssh-keygen -t rsa -N 'passphrase' -f ~/.ssh/id_rsa
#echo 'eval $(ssh-agent -s)' >> ~/.bashrc
#echo 'ssh-add' >> ~/.bashrc
# ssh-copy-id vagrant@192.168.100.10
