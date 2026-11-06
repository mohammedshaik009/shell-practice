#!/bin/bash

while IFS= read -r line || [ $line]
do

echo line is: "$line"
done < 03-variables.sh