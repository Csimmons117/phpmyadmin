#!/bin/bash
echo "##################"
echo "# Running script #"
echo "##################"

# run file as root
sudo apt update
sudo apt upgrade
# installing the mysql before the phpmyadmin
# note for later :     mysql -u root -p
sudo apt install mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql
# this will install the rest of the lamp stack
sudo apt install apache2 mysql-server php libapache2-mod-php php-mysql php-mbstring php-zip php-gd php-json php-curl

sudo apt install phpmyadmin
sudo phpenmod mbstring


echo "#################"
echo "# End of script #"
echo "#################"