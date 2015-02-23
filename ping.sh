#!/bin/bash
#Ansible Ping entire environment

ansible -vvvv -u root -i scripts/rax.py db -m ping -f 20
