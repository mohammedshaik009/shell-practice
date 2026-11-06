#!/bin/bash

SOURCE_DIR=$1
DAYS=${2:-14} #default to 14 days

if [ -z "$SOURCE_DIR" ]; then
    echo "ERROR:: Missing parameters"
    echo "USAGE:: $0 <source_dir> [days(optional) default to 14]"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "ERROR:: source directory does not exist"
    echo "USAGE:: $0 <source_dir>"
    exit 1
fi

echo "scanning for $SOURCE_DIR 14 days older than log files"
FILES=$(find "$SOURCE_DIR" -type f -name "*.log" -mtime +"$DAYS")

if [ -z "$FILES" ]; then
    echo "no log files found older than 14 days"
    exit 0
fi

while IFS= read -r FILE
do
    echo "files to be deleted: $FILE"
    rm -rf $FILE
    echo "files deleted: $FILE"
done <<< "$FILES"