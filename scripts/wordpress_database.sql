CREATE USER 'wordpress-user'@'localhost' IDENTIFIED BY 'passw0rd!';
CREATE DATABASE `wordpress-db`;
GRANT ALL PRIVILEGES ON `wordpress-db`.* TO "wordpress-user"@"localhost";
UPDATE mysql.user SET Password=PASSWORD('passw0rd!') WHERE User='root';
FLUSH PRIVILEGES;
