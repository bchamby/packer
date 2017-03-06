#!/bin/bash

sudo wget https://wordpress.org/latest.tar.gz -O /var/tmp/wordpress_latest.tar.gz
sudo tar -xzf /var/tmp/wordpress_latest.tar.gz
sudo mysql -sfu root < "/var/tmp/wordpress_database.sql"
sudo mkdir /var/www/html/blog
sudo mv /var/tmp/wordpress/* /var/www/html/blog
sudo usermod -a -G www apache
sudo chown -R apache /var/www
sudo chgrp -R www /var/www
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
sudo service httpd restart
sudo chkconfig httpd on
sudo chkconfig mysqld on
