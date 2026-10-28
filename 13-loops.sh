#!/bin/bash

# for number in {1..100}

# do
#     echo $number
# done

USERID=$(id -u)
#check root access or not 
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"

if [ $USERID -ne 0 ]; then
    echo "please run this script with root access"
    exit 1
fi

# $1 -> what are you trying to install
# $2 -> exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "installing $1 is ...FAILED"
        exit 1
    else
        echo "installing $1 is ....SUCCESS"
    fi
}

for package in $@
do
    echo "installing $package"
        dnf list installed $package &>> $LOGS_FILE
        if [ $? -ne 0 ]; then
            dnf install $package -y &>> $LOGS_FILE
            VALIDATE "installing $package" $?
        else
            echo "$package is already installed...SKIPPING"
        fi
done 
