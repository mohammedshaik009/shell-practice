#!/bin/bash

SOURCE_DIR=$2
DAYS=${2:-14}  #default to 14 days

if [ -z $SOUCE_DIR ]; then
    echo "ERROR:: Misssing parameters"
    echo "USAGE: $0 <source_dir> [days(optinal default to 14 days)]"
fi

