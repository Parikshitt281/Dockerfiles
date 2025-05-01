FROM amazonlinux
RUN yum update && yum install nginx -y && echo "this is nginxlinux" > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
