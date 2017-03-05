#!/bin/bash

sudo wget https://wordpress.org/latest.tar.gz -O /var/tmp/wordpress_latest.tar.gz
sudo mysql -sfu root < "/var/tmp/wordpress_database.sql"
