#!/bin/bash -x

read -p "Enter any number for Harminic Series: " num;

if [ $num -gt 0 ]
then

sum=0;

for (( i=1;i<=$num;i++ ))
do
        no=`echo $i | awk '{ print 1/$0 }'`
        sum=`echo $sum $no | awk '{ print $1+$2 }'`;

done
printf "\n";
echo $sum;
fi
