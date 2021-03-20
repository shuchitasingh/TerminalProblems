#!/bin/bash

declare -i arr;
count=0;
arr[ (( count++ )) ]=1;
arr[ (( count++ )) ]=-1;
arr[ (( count++ )) ]=2;
arr[ (( count++ )) ]=-3;
arr[ (( count )) ]=1;

size=${#arr[@]};
flag=1;

for (( i=0; i<$size; i++ ))
do
for (( j=$(( i+1 )); j < $size; j++ ))
do
for (( k=$(( j+1 )); k<$size; k++ ))
do
if [ $(( arr[i] + arr[j] + arr[k] )) -eq 0 ]
then
echo "Elements whose sum is zero are : ${arr[i]}, ${arr[j]}, ${arr[k]} ";
(( flag=1 ));
fi
done
done
done



