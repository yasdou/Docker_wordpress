#!/bin/bash
#you can use this file to connect to your EC2 instance 
#it saves you the hassle of putting in all commands yourself
#make sure your labsuser.pem file is always the right one and always in the Downloads folder 
#DON´T USE SUDO . it will mess with the $USER variable

#Author: Yassin
#Version: 0.1

read -p 'EC2 public IP adress: ' ip

chmod 400 /Users/$USER/Downloads/labsuser.pem

ssh -i /Users/$USER/Downloads/labsuser.pem ec2-user@$ip
