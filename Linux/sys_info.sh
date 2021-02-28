#!/bin/bash

echo "A Quick System Audit Script"
date
echo ""
echo "Machine Type Info:"
echo $MACHTYPE
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n"
echo "Hostname: $(hostname -s) "
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free
echo -e "\nCPU Info:"
lscpu | grep CPU
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "\nWho is logged in: \n $(who) \n"
echo -e "\n777 Files:"
find / -type f -perm 777
echo -e "\nTop 10 Processes"
ps aux -m | awk {'print $1, $2, $3, $4, $11'} 
