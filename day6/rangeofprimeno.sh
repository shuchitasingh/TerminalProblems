#!/bin/bash  -x

#READ UPPER AND LOWER LIMIT
read -p "Enter a number" start
read -p "Enter a number" end

#CHECKS PRIME RANGE
for (( i=start; i<=end; i++ ))
do
   count=0
   for (( j=1; j<=i; j++ ))
   do
      if [ $((i%j)) -eq 0 ]
      then
         count=$((count+1))
      fi
   done

#PRINTS RANGE
if [ $count -eq 2 ]
then
   echo "$i is the Prime number between $start and $end "
fi
