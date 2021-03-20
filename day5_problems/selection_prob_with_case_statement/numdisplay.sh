#!/bin/bash -x

read -p "Enter Any Number : " number;

case $number in
	1) echo "Unit";;
	10) echo "Ten";;
	100) echo "Hundred";;
	1000) echo "Thousand";;
	10000) echo "Ten Thousand";;
	100000) echo "Lakh";;
	1000000) echo "Ten Lakhs";;
	10000000) echo "Million";;
	100000000) echo "Ten Million";;
	1000000000) echo "Billion";;
	10000000000) echo "Ten Billion";;
	100000000000) echo "Trillion";;
	1000000000000) echo "Ten Trillion";;
	*) echo "Please enter Units Only";;
esac
