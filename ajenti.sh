#!/bin/bash
#Script made for Portal LEMP installtion
#Author: Vinod.N K
#Usage: Nginx, Mysql, PhP for portal installation
#Distro : Linux -Centos, Rhel, and any fedora

# Update yum repos.and install development tools
echo "Starting installation of LEAP..."
sudo yum update -y
sudo yum groupinstall "Development Tools" -y
sudo yum install screen -y

pip install --upgrade pip
hash -r
yum install gcc openssl-devel python-devel  openldap-devel -y
pip install ajenti
wget http://repo.ajenti.org/ajenti-repo-1.0-1.noarch.rpm 
rpm -i ajenti-repo-1.0-1.noarch.rpm
yum install ajenti -y
service ajenti restart
