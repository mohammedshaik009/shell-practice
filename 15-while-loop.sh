#!/bin/bash
while IFS= read -r line
do
echo "line is $line"
done < 02-conversation.sh