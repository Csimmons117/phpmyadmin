#!/bin/bash
echo "##################"
echo "# Running script #"
echo "##################"
# run file as root
apt update
apt upgrade -y
# installing the mysql before the phpmyadmin
# note for later :     mysql -u root -p
apt install mysql-server
systemctl start mysql
systemctl enable mysql
# this will install the rest of the lamp stack
apt install apache2 mysql-server php libapache2-mod-php php-mysql php-mbstring php-zip php-gd php-json php-curl
# starting the apache
systemctl start apache2
systemctl enable apache2
apt install phpmyadmin
phpenmod mbstring
echo "#################"
echo "# End of script #"
echo "#################"