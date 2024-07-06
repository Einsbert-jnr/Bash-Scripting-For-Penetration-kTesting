#!/bin/bash

read -p "Enter your full name: " firstname lastname
read -p "Enter your email: " email
run=$(echo -e "$firstname $lastname\t$email" >> users.txt)
if [ -e "users.txt" ];
then
	echo "File already exist"
	$run
else
	echo "File is being created"
	touch users.txt
	$run
	echo "Login saved successfully"
fi
	
