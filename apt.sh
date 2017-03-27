#!/bin/sh

# Using apt

# Install Vim

apt-get install -y vim
clear

# Install apache2

apt-get install -y apache2
clear

# Install mysql database

apt-get install -y mysql-common mysql-server
clear

echo "Edit group setting. Add to aid_inet : add mysql"
sleep 2

vi /etc/group
clear

# Install add-apt-repository

apt-get install -y python-software-properties
clear

apt-get install -y software-properties-common
clear

# Adding ppa repository ( PHP )

add-apt-repository ppa:ondrej/php
clear

apt-get update
clear

# Install php

echo "Sectel version 5, 7.0, 7.1"

read php_ver

apt-get install -y php$php_ver
clear



# END

clear

exit 0
