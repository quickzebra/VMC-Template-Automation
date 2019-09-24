#!/bin/bash -x

########################
#   WEB APPLICATION    #
########################
apt-get install apache2 -y
ufw allow 'Apache Full'
systemctl start apache2
systemctl enable apache2
mkdir -p /var/www/html
chmod -R 777 /var/www/html

####################
#   SETUP APP    #
##################
# echo '<img src="https://s3.amazonaws.com/sssalim-vmc-aws-automation/great_blue.png"><br>' > /var/www/html/index.html
echo '<img src="https://s3.amazonaws.com/sssalim-vmc-aws-automation/great_green.png"><br>' > /var/www/html/index.html
echo '<h3>' >>  /var/www/html/index.html

########################
# PACKAGE INSTALLATION #
########################

apt install apparmor
apt list apparmor -a | sed '$!s/$/<br>/' >>  /var/www/html/index.html


#########
# OTHER #
#########
echo '</h3>' >>  /var/www/html/index.html
sleep 10

