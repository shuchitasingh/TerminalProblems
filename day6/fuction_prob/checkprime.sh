#!/bin/bash

read -p "Enter any Number : "  num;


if [ $num -gt 0 ]
then
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
	echo " is a Palindrome";
else
	echo " is not Palindrome";
fi
}

function check_prime()
{
check=0;
number=$1;
for (( i=2;i<$number;i++ ))
do
        if [ $(( number%i )) -eq 0 ]
        then
                check=1;
        fi
done

if [ $check -eq 1 ]
then
	 a=$( check_palindrome $number );
        echo "$num is not a Prime number but $a";
else
	 a=$( check_palindrome $number );
        echo "$num is a Prime number and $a";
fi

}
result=$( check_prime $num );
echo $result;

fi


