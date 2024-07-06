#!/bin/bash

# This is a script that checks if a directory exist and if not, create it and create three files in that directory
arg1=$1
arg2=$2
arg3=$3

for i in $arg1 $arg2 $arg3
do
	if [ -d $i ];
	then
		echo "Directory $i already exit!!"
	else
		mkdir $i &&  $(touch $i/file1 $i/file2 $i/file3)
		`cp -r $i /tmp`
	fi
done
