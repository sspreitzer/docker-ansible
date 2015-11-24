# Saschas Ansible in a Container

## Pull it
    docker pull sspreitzer/ansible

## Prepare it
Create your *hosts* file and your *site.yml* and your *roles*.
See ansible [documentation](https://docs.ansible.com/ansible/intro.html).

## Run it
    docker -v $(pwd):/var/lib/ansible/env --rm -t sspreitzer/ansible
