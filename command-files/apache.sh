#Restart Apache
sudo service apache2 restart

#Using the Apache benchmark tool
ab #command 
ab -c 1 -n 100 http://sand.cssp.com/ #send one user -c 1 and request page 100 times -n 100 
ab -c 1 -n 100 -C cachename=value url #test how the site proformes when anonomus users are requesting for the page 

## Os in use?
cat /etc/issue
cat /etc/*-release ##gives you more info. 

## Pkg manager for debian based OS 
dpkg --list | grep httpd 

##Check the status of apache 
apache2ctl staus
apache2ctl -V 

#Apache conf file 
less /etc/apache2/apache2.conf

#View quickly error logs
sudo tail -100 /var/log/apache2/error.log

#dump all the avelable modules
apache2ctl -t -D DUMP_MODULES

#Greap/search for error log file inside apache2 dir 
grep -Ri Errorlog /etc/apache2/ 
grep -Ri Errorlog "export APACHE_LOG_DIR" /etc/apache2/

sudoedit file 

#tail error-log realtime 
tail -f mysite-error.log

#Graceful reastart apache. 
sudo service apache2 graceful
   
