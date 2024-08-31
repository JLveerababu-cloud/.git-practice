#!/bin/bash 

USERID=$(id -u)
#echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then 
  echo "Please run this script with root privillages"
  exit 1
  fi

  dnf list installed git # Just checking whether installed or not

  if [ $? -ne 0 ]
  then 
    echo "Git is not installed, going to install it.."

    dnf install git -y

    else 
     echo "Git is alraedy installed nothing to do.."

     fi