#!/bin/bash


if [ ! -d /home/nym/.nym/mixnodes ]
then
	echo "Looking for nym config in /home/nym but could not find any! Enter the path of the nym-mixnode executable"
	read nym_path
	cd $nym_path

else
	cd /home/nym
fi

sudo rm /home/nym/nym-mixnode_linux_x86_64
sudo wget https://github.com/nymtech/nym/releases/download/v0.10.0/nym-mixnode_linux_x86_64
sudo chmod +x nym-mixnode_linux_x86_64
	  
sudo -u nym -H ./nym-mixnode_linux_x86_64 upgrade  --id 'NymMixNode'
