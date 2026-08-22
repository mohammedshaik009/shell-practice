#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log" #LOGS_DIR=/var/log/shell-script/09-logs.sh.log
#check root access or not
if [ $USERID -ne 0 ]; then
    echo "please run this script with root access"
    exit 1
fi
#first arg  ->what are you trying to install 
#second arg ->exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then
    echo "installing $1 is .... FAILED"  | tee -a $LOGS_FILE
    exit 1
else
    echo "installing $1 is .... SUCCESS" | tee -a $LOGS_FILE
    fi
}
dnf list installed mysql   &>> $LOGS_FILE
if [ $? -eq 0 ]; then
    echo "mysql is already installed....SKIPPING"  | tee -a $LOGS_FILE

else
    echo "installing mysql"
    dnf install mysql -y   &>> $LOGS_FILE
    VALIDATE mysql $?
fi

VALIDATE(){
    if [ $2 -ne 0 ]; then
    echo "installing $1 is .... FAILED"    | tee -a $LOGS_FILE
    exit 1
else
    echo "installing $1 is .... SUCCESS"   | tee -a $LOGS_FILE
    fi
}
dnf list installed nginx   &>>  $LOGS_FILE
if [ $? -eq 0 ]; then
    echo "nginx is already installed....SKIPPING" | tee -a $LOGS_FILE

else
    echo "installing nginx"
    dnf install nginx -y   &>> $LOGS_FILE
    VALIDATE nginx $?
fi

