#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR :: please run this script with roor access $N"
    exit 1
else 
    echo -e "$G you are root user $N"
fi
echo "all arguments passed : $@"