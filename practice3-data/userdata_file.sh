#!/bin/bash 
sudo apt install apache2 -y
sudo apt install telnet -y 
sudo systemctl start httpd 
sudo systemctl enable httpd