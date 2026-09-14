#!/bin/bash

DISK_USAGE=$(df -HT | grep -v Filesystem)

while IFS= read -r line
do

done <<< $DISK_USAGE