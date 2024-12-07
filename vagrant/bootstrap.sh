#!/bin/sh

echo 'deb https://nginx.org/packages/ubuntu/ focal nginx' > /etc/apt/sources.list.d/nginx.list
echo 'deb-src https://nginx.org/packages/ubuntu/ focal nginx' >> /etc/apt/sources.list.d/nginx.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
apt-get update -y
apt-get install nginx -y
systemctl enable nginx
systemctl start nginx 
