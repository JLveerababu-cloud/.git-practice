#!/bin/bash

# shellcheck disable=SC2276
LOGS-FOLDER="/var/log/shell-script"
# shellcheck disable=SC2034
# shellcheck disable=SC2209
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=(date +%Y-%m-%d-%H-%M-%S)
# shellcheck disable=SC2034
# shellcheck disable=SC2128
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.LOG"
# shellcheck disable=SC2086
mkdir -p $LOG_FOLDER

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo -e "$R Please run this script with root priveleges $N" &>>$LOG_FOLDER
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is...$R FAILED $N" &>>$LOG_FILE
        exit 1
    else
        echo -e "$2 is... $G SUCCESS $N" &>>$LOG_FILE
    fi
}

CHECK_ROOT