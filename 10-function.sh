#!/bin/bash
ID=$(id -u)
VALIDATE(){    
    if [ $1 -ne 0 ]
    then 
        echo "error: $2 ... failed"
        exit 1
    else
        echo "$2 ...  success"
    fi
}
ID=$(id -u)
if [ $ID -ne 0 ]
then 
   echo "ERROR:: please run this script with root access"
else
   echo "it is root user"
fi
yum install mysql -y
VALIDATE $? "installing mysql"
yum install git -y
VALIDATE $? "installing git"