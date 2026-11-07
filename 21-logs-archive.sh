#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

if [ -z "$SOURCE_DIR" ] || [ -Z "$DEST_DIR" ]; then
    echo "Either:: "SOURCE_DIR" or "DEST_DIR" empty"
    echo "USAGE:: $0 <source_dir> <dest_dir> days[default to 14]"
    exit 1
fi


