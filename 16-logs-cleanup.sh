#!/bin/bash

SOURCE_DIR=$1
DAYS=${2:-14}  #default to 14 days

if [ -z $SOUCE_DIR ]; then
    echo "ERROR:: Misssing parameters"
    echo "USAGE:: $0 <source_dir> [days(optinal default to 14)]"
fi

if [ ! -d $SOUCRE_DIR ]; then
    echo "ERROR: Directory: $SOURCE_DIR does not exist"
    exit 1
fi