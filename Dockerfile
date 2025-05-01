FROM amazonlinux	
RUN yum update && yum install httpd -y && echo "this is linux httpd" > /var/www/html/index.html
EXPOSE 80
CMD [ "httpd", "-D", "FOREGROUND" ]
