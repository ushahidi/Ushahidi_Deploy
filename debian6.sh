#!/bin/bash

# Stop whiptail from prompting for user input during unattended deployment.
export DEBIAN_FRONTEND=noninteractive

# Perform Debian updates.
apt-get update
apt-get upgrade -q -y

# Install necessary Debian packages.
apt-get install -q -y apache2 mysql-server php5 php5-curl php5-mysql php5-mcrypt php-pear git-core postfix

# Enable Apache mod_rewrite.
a2enmod rewrite

# Enable Apache .htaccess files.
sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/sites-enabled/000-default

# Create MySQL user account for Ushahidi.
echo 'create database ushahidi default charset utf8; grant all on ushahidi.* to ushahidi@localhost identified by "ushahidi";' | mysql -u root

# Restart Apache to ensure new configuration is loaded.
/etc/init.d/apache2 restart

# Clone the Ushahidi repository into /var/www.
cd /var/www
rm index.html
git clone https://github.com/ushahidi/Ushahidi_Web.git .

# Transfer ownership of the application to the same user as the Apache process.
chown -R www-data:www-data .
