#!/bin/bash -x

read -p "Enter any number : " num;

if [ $num -ge 0 ]
then
fact=1;
for (( i=1;i<=$num;i++ ))
do
        fact=$(( fact*i ));
done

echo "Factorial  of $num is : "$fact;
fi
