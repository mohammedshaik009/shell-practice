#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)
USAGE_THRESHOLD=10

while IFS= read -r line
do
    USAGE=$(echo $line | cut -d "%" -f1 | awk '{print $6}')
    PARTITION=$(echo $line | awk '{print $7}')
    if [ "$USAGE" -gt "$USAGE_THRESHOLD" ]; then
        MESSAGE+="High disk usage $USAGE: $PARTITION \n"
    fi

done <<< $DISK_USAGE

echo -e $MESSAGE