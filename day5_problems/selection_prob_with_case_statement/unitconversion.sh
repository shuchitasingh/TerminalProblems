#!/bin/bash -x

echo "Select any Unit Convertor from following : ";
echo "1. Feet to Inch";
echo "2. Feet to Meter";
echo "3. Inch to Feet";
echo "4. Meter to Feet";
printf "\n";
read conversion;
read -p "Enter Value to Convert : " unit;

case $conversion in
	1) result=$(( unit*12 ));
	   echo "Feet to Inch : " $result;;
	2) result=`echo $unit | awk '{print $0 * 0.3048}'`;
	   echo "Feet to Meter : " $result;;
	3) result=`echo $unit | awk '{print $0 / 12}'`;
	   echo "Inch to Feet : " $result;;
	4) result=`echo $unit | awk '{print $0 / 0.3048}'`;
	   echo "Meter to Feet : " $result;;
	*) echo "Please enter valid Conversion";;
esac


