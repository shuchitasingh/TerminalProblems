#!/bin/bash

declare -i array1;

for (( i=0;i<10;i++ ))
do
        a=$(( RANDOM %900+100 ));
        array1[$i]=$a;
done

function sorting()
{
arr=( $@ );
size=${#arr[@]};
for ((i = 0; i<$size; i++))
do
    for((j = 0; j<$size-i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
echo ${arr[@]};
}

result=$( sorting ${array1[@]} );

second_small=`echo $result | awk '{print $2}'`;
second_large=`echo $result | awk '{print $(NF-1)}'`;
echo "Array is : "${array1[@]};
echo "Second Largest Element in Array is : "$second_large;
echo "Second Smallest Element in Array is : "$second_small;

