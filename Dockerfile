From centos:6

RUN yum update -y && yum install wget -y
RUN  wget http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm && rpm -ivh epel-release-6-8.noarch.rpm && yum --enablerepo=epel install syslog-ng eventlog syslog-ng-libdbi

ENTRYPOINT ["sh", "-c", "/etc/init.d/rsyslog stop ", "BACKGROUND"]
ENTRYPOINT ["sh", "-c", "/etc/init.d/syslog-ng start", "BACKGROUND"]

EXPOSE 514 514/udp
