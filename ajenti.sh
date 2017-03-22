#!/bin/bash
#Script made for Ajenti Control Panel installtion
#Author: Vinod.N K
#Usage: Ajenti installation
#Distro : Linux -Centos, Rhel, and any fedora

# Update yum repos.and install development tools
echo "Starting installation of AJENTI CONTROL PANEL..."
sudo rpm -ivh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
sudo yum update -y
sudo yum groupinstall "Development Tools" -y
sudo yum install screen -y
yum install gcc openssl-devel python-devel python-pip openldap-devel -y
pip install --upgrade pip
hash -r
pip install ajenti
wget http://repo.ajenti.org/ajenti-repo-1.0-1.noarch.rpm 
rpm -i ajenti-repo-1.0-1.noarch.rpm
yum install ajenti -y
service ajenti restart

echo "By Default Ajenti Username is root and Password is admin"
