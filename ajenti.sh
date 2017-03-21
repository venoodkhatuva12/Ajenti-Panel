
yum update -y
pip install --upgrade pip
hash -r
yum install gcc openssl-devel python-devel  openldap-devel -y
pip install ajenti
wget http://repo.ajenti.org/ajenti-repo-1.0-1.noarch.rpm 
rpm -i ajenti-repo-1.0-1.noarch.rpm
yum install ajenti -y
service ajenti restart
