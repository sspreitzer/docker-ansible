FROM centos:8

RUN yum install -y epel-release && \
  yum install -y ansible openssh-clients && \
  yum clean all && \
  useradd -r -m -d /var/lib/ansible ansible && \
  install -o ansible -g ansible -d /var/lib/ansible/env

RUN dnf install -y epel-release && \
    dnf install -y ansible && \
    dnf clean all && \
    rm -rf /var/cache/dnf
