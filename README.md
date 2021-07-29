# 🏠 Homelab

This playbook is the one I use for my personnal "homelab" which is at the moment a single
debian machine running docker containers.
## Requirements

- Debian Buster (10.0 - current LTS version)
- Ansible
- Vagrant (for testing purposes)

## Usage

```
ansible-playbook playbook.yml
```

For Vagrant:
```
vagrant up
ssh 192.168.33.10
(use password 'test')
```