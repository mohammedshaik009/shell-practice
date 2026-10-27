#!/bin/bash

# TIME_STAMP=$(date)

# echo "Time is: $TIME_STAMP" 

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

TIMESTAMP=$(($END_TIME-$START_TIME))

echo "script executed in $TIMESTAMP seconds"