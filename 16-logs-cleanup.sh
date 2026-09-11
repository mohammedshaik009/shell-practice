#!/bin/bash

SOURCE_DIR=$1
DAYS=${2:-14} #default 14 days

if [ -z $SOUCRE_DIR ]; then
    echo "ERROR:: Missing parameters"
    echo "USAGE: $0 <source_dir> [days(optional1 to deafult to 14)]"
    exit 1
fi 