#!/bin/bash

SOUCRE_DIR=$1
DAYS=${2:-14} #default to 14 days

if [ -z $SOURCE_DIR ]; then
    echo "ERROR:: Missing parameters"
    echo "USAGE: $0 <souce_dir> [days(optinal default to 14 days)]"
fi