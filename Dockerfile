FROM centos:centos7
MAINTAINER Kevin Fox "Kevin.Fox@pnnl.gov"

RUN \
  rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm; \
  yum install -y collectd collectd-smart collectd-sensors collectd-ping collectd-lvm collectd-curl collectd-curl_json collectd-curl_xml jq

CMD /usr/sbin/collectd -C /etc/collectd.conf -f
