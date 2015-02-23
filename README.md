ansible-cassandra
=============

Installs and configures N number of Cassandra nodes in a cluster on Rackspace Public Cloud & (AWS WIP)

## Requirements
1. Ansible > v1.8
2. Rackspace Public Cloud account

## Configuration and files
1. **config/group_vars/all**: contains global variables for cluster settings
2. **prov.sh**: Builds the entire stack -->  
    \ ``` ansible-playbook config/db-server.yml -f 20 ```  
     \ ``` ansible-playbook -i scripts/rax.py config/db.yml -f 20 ```  
      \ ``` ansible -vvvv -u root -i scripts/rax.py db -m ping -f 20 ```  

3. **ping.sh**: Pings all nodes with verbose output  
4. **delete.sh**: Deletes all nodes in cluster with name defined in "all" group_vars.  

## Installation
1. ``` bash prov.sh ```


