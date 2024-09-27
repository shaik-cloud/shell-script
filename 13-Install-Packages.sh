#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILED $N"
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR :: please run this script with roor access $N"
    exit 1
else 
    echo -e "$G you are root user $N"
fi
#echo "All arguments passed: $@"
# git mysql postfix net-tools
# package=git for first time
for package in $@
do
    yum list installed $package &>> LOGFILE #checks package installed or not
if [ $? -ne 0]
then
    yum install $package -y &>> LOGFILE      #installs the package
    VALIDATE $? "installation of $package"   #validate
    


