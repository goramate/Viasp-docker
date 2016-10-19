FROM centos:6.8 
MAINTAINER Mateusz Gora
# Install Required RPM Packages 
RUN yum install httpd -y; yum clean all
RUN yum instal mysql-server mysql -y; yum clean all
RUN yum install php php-mysqli -y; yum clean all
# Initialize Database Directory 

RUN service mysqld start
RUN service httpd start
##################### INSTALLATION END ##################### 
EXPOSE 80 
CMD ["/usr/sbin/init"]
