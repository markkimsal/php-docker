FROM dockerphp/baseimage
MAINTAINER Mark Kimsal https://github.com/markkimsal

ENV HOME /root
#
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 libapache2-mod-fcgid libxml2 libxml2-dev libmysqlclient-dev
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#
RUN mkdir -p /etc/php5/conf.d/
ADD php-5.6.0/buildroot/usr/bin /usr/bin
ADD php-5.6.0/buildroot/usr/include /usr/include
ADD php-5.6.0/buildroot/usr/lib /usr/lib
ADD php-5.6.0/buildroot/usr/php /usr/php
