#!/bin/bash
sleep 30

# yum update
sudo yum update -y

# Install dependencies
sudo yum install -y httpd24 php70 mysql56-server php70-mysqlnd

# Apache config
sudo service httpd start
sudo chkconfig httpd on
sudo groupadd www
sudo usermod -a -G www ec2-user
