#!/bin/bash




read -p "enter username: " username
read -p "enter password : " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username" 

echo "sucessfullu username created"

echo "$(cat /etc/passwd | grep '$usernmae')"


