#!/bin/bash

read -p "Enter any number : " num;

declare -i arr;
j=0;

function sqrt()
{
sqrt=`echo $1 | awk '{ print $0*$0 }'`;
echo $sqrt;
}
while [ $(( num % 2 )) -eq 0 ]
do
	num=`echo $num | awk '{ print $0/2 }'`;
	arr[$j]=2;
        (( j++ ));
done

for (( i=3; `echo $i $( sqrt $num ) | awk '{print $1 < $2}'`;i=$(( i+2 )) ))
do
	while [ $((num % i)) -eq 0 ]
	do
		num=`echo $num | awk '{ print $0/$i }'`;
		arr[$j]=$i;
		(( j++ ));
	done
done

if [ $num -gt 2 ]
then
	arr[$j]=$num;
        (( j++ ));
fi

echo ${arr[@]};
