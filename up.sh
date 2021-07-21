#!/bin/bash

for(( i=1; i <=30; i++ ))
do
	cd ~
	kt='nym'
	nym=${kt}${i}
	cd /home/${nym}
	sudo rm -r /home/${nym}/nym-mixnode_linux_x86_64
	sudo wget https://github.com/nymtech/nym/releases/download/v0.11.0/nym-mixnode_linux_x86_64
	sudo chmod +x nym-mixnode_linux_x86_64
	sudo -u ${nym} -H ./nym-mixnode_linux_x86_64 upgrade  --id 'NymMixNode'
	printf "\n\n"
	printf "Node ${i} ok !"
	printf "\n\n"	
	cd ~
	sleep 15
done
printf "\n\n"
printf "DONE !"
printf "\n\n"
