#!/bin/bash
echo "##################"
echo "# Running script #"
echo "##################"
# run file as root
apt update
apt upgrade -y
# Install open ssh
apt install openssh-server
systemctl start openssh-server
systemctl enable openssh-server
ufw allow ssh
# installing the mysql before the phpmyadmin
# note for later :     mysql -u root -p
apt install mysql-server
systemctl start mysql
systemctl enable mysql
# Create an account to log in
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';"
mysql -e "FLUSH PRIVILEGES;"

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
