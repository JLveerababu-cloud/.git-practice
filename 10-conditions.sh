#!/bin/bash

NUMBER=$1
if [ $NUMBER -gt 20 ]  # gt/, lt, eq,-ne
then 
ech0 "Given number: $NUMBER is grater than 20"
else 
echo "Given number: $NUMBER is less than 20"
fi