#!/bin/bash

echo "Enter any two numbers : ";
read n1;
read n2;

function check_palindrome()
{
rev=0;
temp=$1;
while [[ $temp -gt 0 ]]
do
	rem=$(( $temp % 10 ))
	temp=$(( $temp / 10 ))
	 rev=`expr $(( $rev*10 + $rem ))`;
done


if [ $1 -eq $rev ]
then
	echo "$1 is a Palindrome";
else
	echo "$1 is not Palindrome";
fi
}

a=$( check_palindrome $n1 );
b=$( check_palindrome $n2 );
echo $a " And " $b;
