#!/bin/bash
NUMBER=$1
if [NUMBER -gt 100]
then
   echo "given number $NUMBER IS GREATERTHEN 100"
else
   echo "given number $NUMBER is less than 100"
fi 