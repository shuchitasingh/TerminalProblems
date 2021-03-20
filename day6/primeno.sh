#!/bin/bash/ -x

read -p "Enter any number : " num;

if [ $num -ge 1 ]
then
check=0;
for (( i=2;i<$num;i++ ))
do
        if [ $(( num%i )) -eq 0 ]
        then
                check=1;
        fi
done

if [ $check -eq 1 ]
then
        echo "$num is not a Prime number ";
else
        echo "$num is a Prime number ";
fi
fi
