//Forword mysql port from server to localhost e.g. allows for use with mysql app locally
ssh -L 9000:localhost:3306 username@server

//sftp from local machine to any server 
sftp -i my.pem ubuntu@54.172.92.193

//sshd config file path 
vi /etc/ssh/sshd_config	
