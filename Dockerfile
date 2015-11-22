FROM centos:7

RUN yum install -y epel-release && \
  yum install -y ansible openssh-clients && \
  yum clean all && \
  useradd -r -m -d /var/lib/ansible ansible

USER ansible
WORKDIR /var/lib/ansible

ENV ANSIBLE_INVENTORY=/var/lib/ansible/hosts ANSIBLE_NOCOLOR=1 ANSIBLE_HOST_KEY_CHECKING=False

VOLUME /etc/ansible /var/lib/ansible
CMD ansible-playbook site.yml
