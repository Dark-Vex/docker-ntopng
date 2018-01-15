FROM ubuntu:16.04
MAINTAINER Daniele De Lorenzi <daniele.delorenzi@fastnetserv.net>

RUN apt update && \
    apt install curl wget redis-server lsb-release -y

RUN wget http://apt-stable.ntop.org/16.04/all/apt-ntop-stable.deb && \
    dpkg -i apt-ntop-stable.deb

RUN apt update && \
    apt install ntopng -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 3000

RUN echo '#!/bin/bash\n/etc/init.d/redis-server start\nntopng "$@"' > /tmp/run.sh
RUN chmod +x /tmp/run.sh

ENTRYPOINT ["/tmp/run.sh"]
