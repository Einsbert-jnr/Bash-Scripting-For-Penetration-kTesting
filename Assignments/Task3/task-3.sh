#!/bin/bash
name=""
if [ $EUID != 0 ]
then
	echo "Run the script with sudo"
else
	while [ -z $name ];
	do
		read -p "Enter your username here: " name
	done

	if [ ${name^^} == "ADMIN" ];
	then
		echo "You have admin privilleges"
	else
       		echo "You can't log in as admin"
	fi
fi
