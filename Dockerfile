FROM centos:latest
MAINTAINER shiva@testymaily.co.test
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/mind.zip /var/www/html
WORKDIR /var/www/html
RUN unzip mind.zip
RUN cp -rvf mind/* .
RUN rm -rf mind.zip mind /var/www/html/*
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
