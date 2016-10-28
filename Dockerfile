FROM pnnlhep/osg-base
MAINTAINER Kevin Fox "Kevin.Fox@pnnl.gov"

RUN \
  yum install -y collectd

CMD [/usr/sbin/collectd, -C, /etc/collectd.conf, -f]
