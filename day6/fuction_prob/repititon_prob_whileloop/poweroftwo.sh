#!/bin/bash 

   read -p "Enter any number : " num;

   power=$(( 2**num ));
   i=2; 
   if [ $num -ge 1 ]
   then

   while [[ $res -lt 256 ]]
   do
        res=$(( 2**i ));
	echo $res;
	(( i++ ));
   done
   fi
