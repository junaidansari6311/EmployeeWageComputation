#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

IS_PRESENT=1 #Constant

if [ $((RANDOM%2)) -eq $IS_PRESENT ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
