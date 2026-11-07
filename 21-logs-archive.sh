#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

if [ -z "$SOURCE_DIR" ] || [ -z "$DEST_DIR" ]; then
    echo "Either:: SOURCE_DIR or DEST_DIR empty"
    echo "USAGE:: $0 <source_dir> <dest_dir> days[default to 14]"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "source_dir $SOURCE_DIR does not exist"
    exit 1
fi

if [ ! -d "$DEST_DIR" ]; then
    echo "dest_dir $DEST_DIR does not exist"
    exit 1
fi

echo "scanning $SOURCE_DIR for log files older than 14 days"
FILES=$(find "$SOURCE_DIR" -type f -name "*.log" -mtime +$DAYS)

if [ -z "$FILES" ]; then
    echo "no log $SOURCE_DIR files found older than 14 days"
    exit 0
fi

# while IFS= read -r FILE
# do
#     echo "$FILE"
# done <<< "$FILES"

TIMESTAMP=$(date "+%Y-%m-%d-%H-%M-%S")
ARCHIVE_FILE="$DEST_DIR/log-archive-$TIMESTAMP.tar.gz"

tar -czvf $ARCHIVE_FILE $FILES

if [ $? -eq 0 ]; then
    echo "archival is success"
        while IFS= read -r FILE
        do 
    echo "files ready to be deleted: $FILE"
        rm -rf "$FILE"
    echo "files $FILE deleted"
        done <<< "$FILES"
else
    echo "ERROR::archival is FAILED"
fi