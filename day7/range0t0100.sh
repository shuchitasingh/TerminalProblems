#!/bin/bash

declare -i arr;
count=0;
for (( i=1; i<=100; i++ ))
do

rev=0;
temp=$i;
while [[ $temp -gt 0 ]]
do
        rem=` expr $temp % 10 `;
        rev=`echo $rem | awk '{ print $rev*10 + $0 }'`;
        temp=` expr $temp / 10 `;
done

if [ $i -eq $rev ]
then
       arr[$count]=$i;
        (( count ++ ));
fi

done

echo ${arr[@]};

