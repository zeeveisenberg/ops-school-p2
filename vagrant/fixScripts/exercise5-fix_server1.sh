#!/bin/bash
#add fix to exercise5-server1 here
su vagrant
echo 'Host *' > /home/vagrant/.ssh/config
echo '   StrictHostKeyChecking no' >> /home/vagrant/.ssh/config
ssh-keygen -t rsa -N '' -f /home/vagrant/.ssh/id_rsa

#ssh-keygen -t rsa -N 'passphrase' -f ~/.ssh/id_rsa
#echo 'eval $(ssh-agent -s)' >> ~/.bashrc
#echo 'ssh-add' >> ~/.bashrc
# ssh-copy-id vagrant@192.168.100.11