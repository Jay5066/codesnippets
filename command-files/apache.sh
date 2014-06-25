#Restart Apache
service httpd start

#Using the Apache benchmark tool
ab #command 
ab -c 1 -n 100 http://sand.cssp.com/ #send one user -c 1 and request page 100 times -n 100 
ab -c 1 -n 100 -C cachename=value url #test how the site proformes when anonomus users are requesting for the page 
