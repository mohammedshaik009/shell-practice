#!/bin/bash

while IFS= read -r line # IFS internal field seperator
do
    echo "$line"
done < 01-helloworld