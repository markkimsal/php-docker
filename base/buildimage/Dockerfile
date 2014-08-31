FROM dockerphp/baseimage:0.9.10.1
MAINTAINER Mark Kimsal https://github.com/markkimsal

ENV HOME /root
CMD ["/sbin/my_init"]
#
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential
#
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
