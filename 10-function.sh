#!/bin/bash
VALIDATE(){    
    if [ $? -ne 0 ]
    then 
        echo "error:installing is failed"
        exit 1
    else
        echo "installing is success"
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
VALIDATE
yum install git -y
VALIDATE