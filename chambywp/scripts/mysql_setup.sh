#!/bin/bash

sudo service mysqld start
sudo mysql -sfu root < "/var/tmp/mysql_secure_installation.sql"
sudo service mysqld restart
sudo chkconfig mysqld on
