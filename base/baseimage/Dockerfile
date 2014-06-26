FROM phusion/baseimage:0.9.10
MAINTAINER Mark Kimsal https://github.com/markkimsal

ENV HOME /root
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh
CMD ["/sbin/my_init"]
#
RUN apt-get update
RUN apt-get install -y ca-certificates inotify-tools vim pwgen tmux wget telnet
#
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
