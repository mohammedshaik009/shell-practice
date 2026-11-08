#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)
USAGE_THRESHOLD=10

while IFS= read -r line
do
    USAGE=$(df -hT | cut -d "%" -f1 | awk '{print $6}')
    PARTITION=$(df -hT | awk '{print $7}')
    if [ "$USAGE" -gt "$USAGE_THRESHOLD" ]; then
        MESSAGE+="High disk usage on $PARTITION \n"
    fi

echo -e "$line"
done <<< $DISK_USAGE