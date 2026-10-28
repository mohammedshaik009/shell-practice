#!/bin/bash

USERID=$(id -u)
#check root access or not 
if [ $USERID -ne 0 ]; then
    echo "please run this script with root access"
    exit 1
fi
# $1 -> what are you trying to install
# $2 -> exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "installing $1 is ....FAILED"
        exit 1
    else
        echo "installing $1 is ....SUCCESS"
    fi
}
dnf list installed mysql
if [ $? -eq 0 ]; then
    echo "mysql is already installed ...SKIPPING"
else
    echo "installing mysql"
        dnf install mysql -y
        VALIDATE mysql $?
fi

dnf list installed nginx
if [ $? -eq 0 ]; then
    echo "nginx is already installed ...SKIPPING"
else
    echo "installing nginx"
        dnf install nginx -y
        VALIDATE nginx $?
fi