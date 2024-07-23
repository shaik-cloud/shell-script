#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then 
   echo "ERROR:: please run this script with root access"
else
   echo "it is root user"
fi
yum install mysql111 -y
if [ $? -ne 0 ]
then 
   echo "error:installing mysql is failed"
   exit 1
else
   echo "installing mysql is success"
fi
