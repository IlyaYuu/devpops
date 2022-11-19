#!/bin/bash
sudo yum -y update
sudo yum install -y epel-release
sudo yum -y install nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo cp -f /vagrant/index.html /usr/share/nginx/html/index.html