FROM centos:7
MAINTAINER Yashpal Devops Lab
LABEL Vendor="CentOS" \
	  License=GPLv2 \
	  Version=1.1.1
RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all
EXPOSE 80
ADD run-httpd.sh /run-httpd.sh
RUN chmod -c +x /run-httpd.sh
CMD ["/run-httpd.sh"]
