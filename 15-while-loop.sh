#!/bin/bash

while IFS= read -r line
do 
    echo "processing line:$line"
done <02-conversation.sh