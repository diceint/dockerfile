FROM centos:7

#RUN yum update -y
RUN yum install httpd -y 
RUN yum install php -y
RUN yum install git -y
RUN yum install php-mysqli -y

RUN git clone https://github.com/diceint/interview.git /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
