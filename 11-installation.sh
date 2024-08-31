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

    if [ $? -ne 0 ]
    then 
      echo "Git installation is not succes...check it"
      exit 1
      else
         echo "Git installation is successs"
    else 
     echo "Git is alraedy installed nothing to do.."

     fi

      dnf list installed mysql
       
       
    if [ $? -ne 0 ]
    then 

         echo "mysql not installed going to installed it"
         dnf install mysql -y
  if [ $? -ne 0 ]
    then
          echo "Mysql installation is failure .. please check"
          exit 1
    else
          echo "mysql installation is success"

     fi
    else
          echo "my sql is alraedy is installed ..nothing to do"

