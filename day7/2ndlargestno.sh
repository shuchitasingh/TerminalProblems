#!/bin/bash

declare -i array1;


for (( i=0;i<10;i++ ))
do
        a=$(( RANDOM %900+100 ));
        array1[$i]=$a;
done

echo "Array Values : " ${array1[@]};
echo "Array Index  : "${!array1[@]};
echo "Array Count  : "${#array1[@]};

second_large=$(printf '%s\n' "${array1[@]}" | sort -n | tail -2 | head -1);
second_small=$(printf '%s\n' "${array1[@]}" | sort -r | tail -2 | head -1);
echo "Second Largest : "$second_large;
echo "Second Smallest : "$second_small;

