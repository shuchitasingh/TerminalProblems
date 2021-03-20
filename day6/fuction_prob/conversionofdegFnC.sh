#!/bin/bash

 echo "Select Conversion : ( 1 or 2 )";
 echo "1. Celsius to Fahrenheit";
 echo "2. Fahrenheit to Celsius";
 read choice;

 read -p "Enter value to Convert : " num;


 function celsius_to_fahr ()
 {
        res=`echo $1 | awk '{print (9*($0/5)+32) }'`;
        echo "Celsius to Fahrenheit: " $res;
 }

 function fahr_to_celsius ()
 {
        res=`echo $1 | awk '{print ($0-32)*5/9 }'`;
        echo "Fahrenheit to Celsius : "$res;
 }



 case $choice in
	1) a=$( celsius_to_fahr $num );
	   echo $a;;
	2) b=$( fahr_to_celsius $num );
	   echo $b;;
	*) echo "Please enter valid choice";;
 esac
