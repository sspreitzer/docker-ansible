FROM centos:7

RUN yum install -y epel-release && \
  yum install -y ansible openssh-clients && \
  yum clean all && \
  useradd -r -m -d /var/lib/ansible ansible && \
  install -o ansible -g ansible -d /var/lib/ansible/env

USER ansible
WORKDIR /var/lib/ansible/env

ENV ANSIBLE_INVENTORY=/var/lib/ansible/hosts ANSIBLE_NOCOLOR=1 ANSIBLE_HOST_KEY_CHECKING=False

VOLUME /etc/ansible /var/lib/ansible /var/lib/ansible/env
CMD ansible-playbook site.yml
