#!/bin/bash

NUMBER=$1

# -gt -> greater than
# -ge -> greater than or equal
# -eq -> equal
# -ne -> not equal
# -lt -> less than
# -le -> less than or equal

if [ $NUMBER -gt 20 ]; then
    echo "given number $NUMBER is greater than 20"
elif [ $NUMBER -eq 20 ]; then
    echo "given number $NUMBER is equal to 20"
else
    echo "given number $NUMBER is less than 20"
fi