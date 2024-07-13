#!/bin/bash

echo -e "\t\t\t\t Welcome to generate valide IPs"

ip_block=$1

if [ $# -eq 0 ];
then
	echo "Usage: generate_ips.sh <ip-address>"
	exit 1
else

	part=`cut -d "." -f 1-3 <<< $ip_block`

	for i in {1..254};
	do
		echo "$part.$i" >> valid_ips.txt
	done

	echo "Output saved successfully into the text file"
fi
