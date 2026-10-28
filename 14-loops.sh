#!/bin/bash

USERID=$(id -u) #check root access or not
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if [ $USERID -ne 0 ]; then
    echo "please run this script with root access"
    exit 1
fi

# $1 -> what are you trying to install
# $2 -> exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "$TIMESTAMP [ERROR] installing $1 is ...FAILED"  | tee -a $LOGS_FILE
        exit 1
    else
        echo "$TIMESTAMP [INFO] installing $1 is ...SUCCESS" | tee -a $LOGS_FILE
    fi
}

for package in $@
do
   echo "$TIMESTAMP [INFO] installing $package"
        dnf list installed $package  &>> $LOGS_FILE
        if [ $? -ne 0 ]; then
            dnf install $package -y  &>> $LOGS_FILE
            VALIDATE "installing $package" $?
        else
            echo "$TIMESTAMP [INFO] $package is already installed ...SKIPPING" | tee -a $LOGS_FILE
        fi
done