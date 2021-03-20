#!/bin/bash -x

read -p "Enter any Day No : " day;

if [ $day -ge 1 ] && [ $day -le 7 ]
then

if [ $day -eq 1 ]
then
	echo "Monday";
elif [ $day -eq 2 ]
then
	echo "Tuesday";
elif [ $day -eq 3 ]
then
	echo "Wednesday";
elif [ $day -eq 4 ]
then
	echo "Thursday";
elif [ $day -eq 5 ]
then
        echo "Friday";
elif [ $day -eq 6 ]
then
        echo "Saturday";
elif [ $day -eq 7 ]
then
        echo "Sunday";
else
	echo "Please enter between 1 to 7";
fi
else
        echo "Please enter between 1 to 7";
fi

