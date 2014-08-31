#!/bin/sh
mkdir -p /etc/php5/conf.d
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential
DEBIAN_FRONTEND=noninteractive apt-get install -y libxml2-dev libxml2 libmysqlclient-dev freetds-dev libsybdb5
ln -s /usr/lib/x86_64-linux-gnu/libsybdb.so /usr/lib/
cd /tmp
./configure --prefix=/usr \
--without-pear \
--with-gnu-ld \
--with-pdo-dblib \
--with-pdo-mysql \
--with-config-file-path=/etc/php5 \
--with-config-file-scan-dir=/etc/php5/conf.d
make
make install INSTALL_ROOT=/tmp/buildroot
