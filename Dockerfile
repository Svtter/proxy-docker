# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu:14.04.3
MAINTAINER svtter <svtter@qq.com>

RUN apt-get update && \
    apt-get install -y python-pip
RUN pip install proxy.py

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/proxy.py"]
