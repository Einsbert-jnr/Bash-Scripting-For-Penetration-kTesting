#!/bin/bash

# The code below is an optimized code but 

ip_file=$1
# while IFS= read -r line;
# do
# 	status=`ping -c 1 $line | grep "from" | cut -d " " -f 3`
# 	if [[ $status = "from" ]];
# 	then
# 		echo "Host $line is online"
# 		echo $line >> online_host.txt
# 	else
# 		echo "Host $line is offline"
# 	fi
# done < $ip_file



if [[ ! -f $ip_file ]]; 
then
	echo "Invalid file suppled"
	echo "The program will  now exit"
	exit 1

else
	## read files
	while read -r ip; do
		ping -c1 -W1 $ip > /dev/null && echo "Host $ip is online" && echo "$ip" >> online_host.txt
	done < "$ip_file"
fi
