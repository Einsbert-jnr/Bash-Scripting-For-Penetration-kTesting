#!/bin/bash

echo "This is my first bash script"
echo "This script is to create directory, files and rm them as well"

cd ~ # Changing directory to the home directory

mkdir script_dir # Creating new directory

cd script_dir # Changing into the created directory
touch first_file # creating new file in the directory created

echo "This is content of the first file" > first_file # writing to the first file

echo "0% ..completed"
echo "25%...completed"
echo "50%..completed"
echo "75%..completed"
echo "100..completed"

echo < first_file # displaying content in the first file created 
echo "Directory and files created without error"
# Removing all the directories and files created
echo "Removing directories...."
rm -r /home/clement/script_dir  # removing the directory and all the content in it
echo "Directory and it contents removed without an error"

echo "Script run sucessfully"
