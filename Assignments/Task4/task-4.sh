#!/bin/bash


if [ -e "users.txt" ];
then
	echo "File already exist"
else
	echo "File is being created"
	touch users.txt

	read -p "Enter your full name: " firstname lastname
	read -p "Enter your active email address: " email

	echo -e "\t\t\t\t\t<>Student Details<>" > users.txt
	echo "$firstname $lastname $email" >> users.txt

	echo "Login saved successfully"
fi
	
