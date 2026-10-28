#!/bin/bash


set -e
USERID=$(id -u) #check root access or not
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


#check root access or not
if [ $USERID -ne 0 ]; then
    echo "please run this script with root access"
    exit 1
fi

# $1 -> what are you trying to install
# $2 -> exit code


for package in $@
do
   echo "$TIMESTAMP [INFO] installing $package"
        dnf list installed $package  &>> $LOGS_FILE
        if [ $? -ne 0 ]; then
            dnf install $package -y  &>> $LOGS_FILE
            VALIDATE "installing $package" $?
        else
            echo -e "$TIMESTAMP [INFO] $package is already installed ...$Y SKIPPING $N" | tee -a $LOGS_FILE
        fi
done