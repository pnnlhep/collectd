FROM centos:centos7
MAINTAINER Kevin Fox "Kevin.Fox@pnnl.gov"

RUN \
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm; \
  yum install -y collectd collectd-smart colectd-sensors collectd-ping collectd-lvm

CMD /usr/sbin/collectd -C /etc/collectd.conf -f
