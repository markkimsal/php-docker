#!/bin/sh
BUILDCONTAINER="dockerphp-buildimage"
#rm -Rf php-5.6.0
#tar -jxvf php-5.6.0.tar.bz2

cp make-php-inside-docker.sh php-5.6.0

docker \
start \
$BUILDCONTIANER \
/bin/sh /tmp/make-php-inside-docker.sh
