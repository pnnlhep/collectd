FROM centos:centos7
MAINTAINER Kevin Fox "Kevin.Fox@pnnl.gov"

RUN \
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm; \
  yum install -y collectd

CMD /usr/sbin/collectd -C /etc/collectd.conf -f
