#!/bin/bash

while IFS= read -r line || [ -n "$line" ]
do

echo "$line"
done < 02-conversation.sh