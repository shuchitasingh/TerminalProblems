#!/bin/bash -x

read -p "Enter Any Number : " number;

if [ $number -eq 1 ]
then
	echo "Unit";
elif [ $number -eq 10 ]
then
	echo "Ten";
elif [ $number -eq 100 ]
then
	echo "Hundred";
elif [ $number -eq 1000 ]
then
	echo "Thousand";
elif [ $number -eq 10000 ]
then
	echo "Ten Thousand";
elif [ $number -eq 100000 ]
then
        echo "Lakh";
elif [ $number -eq 1000000 ]
then
	echo "Ten Lakh";
elif [ $number -eq 10000000 ]
then
        echo "Million";
elif [ $number -eq 100000000 ]
then
	echo "Ten Million";
elif [ $number -eq 1000000000 ]
then
        echo "Billion";
elif [ $number -eq 10000000000 ]
then
	echo "Ten Billion";
elif [ $number -eq 100000000000 ]
then
        echo "Trillion";
elif [ $number -eq 1000000000000 ]
then
	echo "Ten Trillion";
else
	echo "Please enter Units Only";
fi
