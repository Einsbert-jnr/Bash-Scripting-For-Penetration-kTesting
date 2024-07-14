#!/bin/bash


ip_block=$1

if [ $# -eq 0 ];
then
	echo "Usage nmap_script_sweep.sh <ip-addr-block>"
	exit 255
else
	nmap --verbose -sL $1 | grep -i "report" | cut -d " " -f 5 >> ip_list.txt
fi
