#!/bin/bash

# - Disk utilization monitoring and email sender
# - Elijah Berumen CSCI 4113

# - Storing the usage percentage as an integer for each filesystem
root=$(df -h / | awk 'NR == 2 {print $5+0}')
boot=$(df -h /boot | awk 'NR == 2 {print $5+0}')
threshold=80

echo -e "\n/ space utilization:\n $root%"
if [ $root -ge $threshold ]; then
    echo -e "EMAIL ALERT: / filesystem disk usage exceeding $threshold%\n" | mail -s "/ filesystem disk space of $root% exceeding threshold of $threshold% on $(hostname)" root@localhost
else
    echo -e "/ filesystem disk usage not exceeding $threshold%\n"
fi

echo -e "/boot space utilization:\n $boot%"
if [ $boot -ge $threshold ]; then
    echo -e "EMAIL ALERT: /boot filesystem disk usage exceeding $threshold%\n" | mail -s "/ filesystem disk space of $boot% exceeding threshold of $threshold% on $(hostname)" root@localhost
else
    echo -e "/boot filesystem disk usage not exceeding $threshold%\n"
fi
