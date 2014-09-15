#Restart Apache
sudo service apache2 restarts

#Using the Apache benchmark tool
ab #command 
ab -c 1 -n 100 http://sand.cssp.com/ #send one user -c 1 and request page 100 times -n 100 
ab -c 1 -n 100 -C cachename=value url #test how the site proformes when anonomus users are requesting for the page 

## Os in use?
cat /etc/issue
cat /etc/*-release ##gives you more info. 

## Pkg manager for debian based OS 
dpkg --list | grep httpd 

##
apache2ctl staus
apache2ctl -V 

#Apache conf file 
less /etc/apache2/apache2.conf
#View quickly error logs
sudo tail -100 /var/log/apache2/error.log    
