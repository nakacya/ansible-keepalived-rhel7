
# Installation for keepalived

clone repository
```
git clone https://github.com/nakacya/ansible-keepalived-rhel7.git
```

configuration
```
vim ./ansible-keepalived-rhela/grvars/keeiplived
```

place of installation
```
vim ./ansible-keepalived-rhel7/hosts
```

execute
```
cd ansible-keepalived-rhel7
ansible-playbook -u <userName> ./keeiplived.yml

# public key authentication
ansible-playbook --private-key=<pathToPrivatekey> -u <userName> ./keeiplived.yml
```
