#!/bin/bash

# - System Dashboard Script
# - Elijah Berumen CSCI 4113

# - Global Vars

check_dom=google.com
int_check=
lo_rec=$(cat /proc/net/dev | awk 'NR == 4 {print$2}')
lo_trans=$(cat /proc/net/dev | awk 'NR == 4 {print$10}')
enp0s3_rec=$(cat /proc/net/dev | awk 'NR == 3 {print$2}')
enp0s3_trans=$(cat /proc/net/dev | awk 'NR ==3 {print$10}')
total_users=$(cat /etc/passwd | wc -l)
active_users=$(who | cut -d " " -f 1 | sort -u | wc -l)
num_shells=$(cat /etc/shells | wc -l)
no_login_ct=$(awk -F ":" '{print$7}' /etc/passwd | grep -c /sbin/nologin)
bash_ct=$(awk -F ":" '{print$7}' /etc/passwd | grep -c /bin/bash)
false_ct=$(awk -F ":" '{print$7}' /etc/passwd | grep -c /bin/false)
num_files=$(find / -type f | wc -l) # - Finds # files in / dir recursively
num_dir=$(find / -type d | wc -l)

clear
function check_net
{
    ping $check_dom -c 4

    if [ $? -eq 0 ]
      then
        int_check=YES
      else
        int_check="NO"
    fi
}
check_net

# - System Dashboard

echo -e "----- CPU AND MEMORY RESOURCES -----\n"
echo -e "CPU Load Average: $(uptime | awk 'NR == 1 {print $9,$10,$11}')     Free RAM: $(free -m | awk 'NR == 2 {print $4}')\n"

echo -e "----- NETWORK CONNECTIONS -----\n"
echo -e "lo Bytes Received: $lo_rec    Bytes Transmitted: $lo_trans  \n"
echo -e "enp0s3 Bytes Received: $enp0s3_rec     Bytes Transmitted: $enp0s3_trans    \n"
echo -e "Internet Connectivity: $int_check \n"

echo -e "----- ACCOUNT INFORMATION -----\n"
echo -e "Total Users: $total_users         Number Active: $active_users  \n"
echo -e "Shells: $num_shells \n"
echo -e "/sbin/nologin: $no_login_ct \n"
echo -e "/bin/bash: $bash_ct  \n"
echo -e "/bin/false: $false_ct \n"

echo -e "----- FILESYSTEM INFORMATION -----\n"
echo -e "Total Number of Files: $num_files  \n"
echo -e "Total Number of Directories: $num_dir  \n"
