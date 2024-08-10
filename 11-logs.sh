#!/bin/bash
echo "script name: $0"
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){    
    if [ $1 -ne 0 ]
    then 
        echo "error: $2 ... $R failed $N"
        exit 1
    else
        echo "$2 ... $G success $N"
    fi
}
ID=$(id -u)
if [ $ID -ne 0 ]
then 
   echo " $R ERROR:: please run this script with root access $N"
else
   echo "it is root user"
fi
yum install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"
yum install git -y &>> $LOGFILE
VALIDATE $? "installing git"