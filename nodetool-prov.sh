#!/bin/bash
#This is the master provisioning script


#provision nodes
ansible-playbook -i scripts/rax.py config/nodetool-server.yml -f 20

#configure nodes
ansible-playbook -i scripts/rax.py config/nodetool.yml -f 20

#ping them
ansible -vvvv -u root -i scripts/rax.py db -m ping -f 20
