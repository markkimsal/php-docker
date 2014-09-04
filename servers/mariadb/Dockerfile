FROM dockerphp/baseimage
MAINTAINER Mark Kimsal https://github.com/markkimsal

ENV MARIADB_USER docker
ENV MARIADB_DB NONE
#RUN apt-get update
#RUN apt-get install -y software-properties-common
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
RUN echo -n 'deb http://ftp.utexas.edu/mariadb/repo/10.0/ubuntu trusty main' > /etc/apt/sources.list.d/mariadb.list
#RUN apt-get update -o Dir::Etc::sourcelist="/etc/apt/sources.list.d/mariadb"
RUN apt-get update
RUN apt-get install -y mariadb-server
#listen on all interfaces
RUN sed -i -e "s/127\.0\.0\.1/0\.0\.0\.0/" /etc/mysql/my.cnf
#datadir is /data
RUN sed -i -e "s/^datadir.*=.*/datadir = \/data/" /etc/mysql/my.cnf

# Change the innodb-buffer-pool-size to 64M (default is 256M).
# This should make it friendlier to run on low memory servers.
#RUN sed -i -e 's/^innodb_buffer_pool_size\s*=.*/innodb_buffer_pool_size = 64M/' /etc/mysql/my.cnf
RUN echo 'innodb_buffer_pool_size = 64M'  >> /etc/mysql/my.cnf

ADD 01mariadb /etc/my_init.d/01mariadb
RUN mkdir /etc/service/mariadb
ADD run.sh /etc/service/mariadb/run
VOLUME ["/data/"]
EXPOSE 3306
