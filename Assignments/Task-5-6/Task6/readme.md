### Nmap_generate_host_list.sh scripts
- This is performs the same function as generate_ips.sh in Task5 directory but **nmap is used instead**
- ip_list.txt contains the list of the ip result that are available to be used for other purpose
- This ips in ip_list.txt will be fed into another script to perform ping scan in order to check the online status of each host


### Nmap_check_online_status.sh script
- This performs the same task as *check_online_ips.sh* in Task5 directory which uses **ping**. This script utility **nmap** scanning tool to perform the same function
- It takes ips in *ip_list.txt* as an argument and perfom the status check on each of them
- The *online hosts* are saved to a file named *
