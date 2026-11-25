#!/bin/bash

DISK_USAGE=$( df -HT | grep -v Filesystem )
USAGE_THRESHOLD=2
SERVER_IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)

while IFS= read -r line
do
    USAGE=$(echo $line | cut -d "%" -f1 | awk '{print $6}')
    PARTITION=$(echo $line | awk '{print $7}')
    if [ "$USAGE" -ge "$USAGE_THRESHOLD" ]; then
    MESSAGE+="High disk usage on $PARTITION: $USAGE <br>"
    fi

done <<< "$DISK_USAGE"

echo -e "$MESSAGE"

sh mail.sh "DevOps Team" "High disk usage" "$SERVER_IP" "$MESSAGE" "mohammedshaik009@gmail.com" "high disk usage alert"