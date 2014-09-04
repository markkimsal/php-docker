#!/bin/sh
PHPDIR="php-5.6.0"
BUILDCONTAINER="dockerphp-buildimage"
cp make-php-inside-docker.sh $PHPDIR

docker \
run \
--rm \
--name="dockerphp-buildimage" \
-v $(pwd)/php-5.6.0:/tmp \
dockerphp/baseimage \
/bin/sh /tmp/make-php-inside-docker.sh 
