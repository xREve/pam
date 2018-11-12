# HOSTPAM

FROM fedora:27
RUN dnf -y install procps iputils vim passwd openldap-clients nss-pam-ldapd
RUN mkdir /opt/docker
COPY * /opt/docker/
WORKDIR /opt/docker/
CMD ["/opt/docker/startup.sh"]
