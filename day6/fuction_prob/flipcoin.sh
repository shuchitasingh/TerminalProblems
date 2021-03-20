head_count=0;
tail_count=0;

while [[ $(( head_count )) -lt 11 ]]
do
	num=$(( RANDOM %2+1 ));
	if [ $num -eq 1 ]
	then
		echo "Head " ;
		(( head_count ++ ));
	else
		echo  "Tail " ;
		(( tail_count ++ ));
	fi
done
echo "Total Heads : " $head_count;
echo "Total Tails : " $tail_count;
