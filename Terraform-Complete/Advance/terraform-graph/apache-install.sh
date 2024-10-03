#! /bin/bash
sudo yum update -y
sudo yum install http -y
sudo service httpd start
sudo systemctl enable httpd
echo "<h1> Welcome to my page </h1?" > /var/www/html/index.html