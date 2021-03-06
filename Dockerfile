FROM debian:9
MAINTAINER Jakub Kwiatkowski <jakub@ajbisoft.pl>
COPY sources.list /etc/apt/
RUN apt-get update && apt-get -y install redis-server \
	&& apt-get -y --purge autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*
EXPOSE 6379
CMD ["/usr/bin/redis-server"]
