FROM centos:7
LABEL maintainer="bek@kamalov2020.com"

RUN yum install epel-release -y && yum install fortune-mod -y
WORKDIR /html/
CMD ["/bin/sh", "-c", "while true; do fortune > /html/index.html; sleep 5; done;"]
