FROM ubuntu
RUN apt update && apt install apache2 -y 
RUN echo "this is ubuntu apache" > /var/www/html/index.html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
