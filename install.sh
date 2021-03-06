#!/bin/bash

###
# it will install prerequisites, deploy, restart nginx and create database.
# 1407455615s  : tested on ubuntu trusty tahr
##

if dpkg -s "apache" > /dev/null 2>&1; then
  echo "this script does not work in machines with apache installed."
  exit 1
fi

sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove


echo "prerequisites installing"

PACKAGE_LIST="
mysql-client
mysql-server
nginx
php5-fpm
php5-mysql
exim4
"

for pak in $PACKAGE_LIST ; do
  if ! dpkg -s $pak > /dev/null; then
    sudo apt-get install -y $pak
  fi
done


echo "deploying"
cd /tmp
rm -rf master.zip* aide-master*

wget https://github.com/aidewind/aide/archive/master.zip > /dev/null 2>&1
unzip master.zip > /dev/null 2>&1

echo "configuring exim4"
#font https://www.digitalocean.com/community/tutorials/how-to-install-the-send-only-mail-server-exim-on-ubuntu-12-04
#fonth ttp://tera7.blogspot.com.br/2012/05/installing-nginx-postgresql-php-and.html
sudo mv aide-master/etc/exim4/update-exim4.conf.conf /etc/exim4/update-exim4.conf.conf

echo "configuring nginx"
sudo mv aide-master/etc/nginx/sites-available/default /etc/nginx/sites-available/default
sudo rm -rf aide-master/etc aide-master/home aide-master/opt

sudo rm -rf /usr/share/nginx/html/*
sudo cp -rf aide-master/* /usr/share/nginx/html

sudo chmod 755 -R /usr/share/nginx/html

#echo "configuring sendmail"
#sudo sed -i '/127.0.0.1\tlocalhost/c\127.0.0.1\tlocalhost.localdomain localhost'  /etc/hosts
#sudo sed -i '/127.0.0.1\t'$HOSTNAME'/c\127.0.0.1\t'$HOSTNAME'.localhost '$HOSTNAME  /etc/hosts
#echo "define('SMART_HOST','smtp.spbtlg.ru')dnl" | sudo tee -a /etc/mail/sendmail.mc
#cd /etc/mail
#sudo su
#m4 sendmail.mc > sendmail.cf
#make
#exit
#sudo /etc/init.d/sendmail restart


echo "nginx restarting"
sudo nginx -s stop 
sudo nginx

echo "database creating"
mysql -u root -psecret < /usr/share/nginx/html/db.sql