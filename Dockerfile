FROM centos:8

RUN dnf install -y epel-release && \
    dnf install -y ansible yamllint openssh-clients && \
    dnf clean all && \
    rm -rf /var/cache/dnf
