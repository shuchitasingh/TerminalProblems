#!/bin/bash -x

#read -p "Enter no of trials : " trial;
#random=$(( RANDOM %2 ));
bets=0;
wins=0;
trial=1;
count=0;
stake=100;
goal=200;
while [[ $count -le 0 ]]
do
	cash=$stake;
	while [[ $cash -gt 0 && $cash -lt $goal ]]
	do
		(( bets++ ));
		if [ $random > "0.5" ]
		then
			(( cash++ ));
		else
			(( cash-- ));
		fi
	done
	if [ $cash -eq $goal ]
	then
		(( wins++ ));
		count=1;
	fi
	trial=$(( trial+1 ));
done
fina_win=`echo $trial | awk '{print (100*$wins)/$0 }'`;
fina_bet=`echo $trial | awk '{print (100*$bets)/$0 }'`;
echo "$wins times wins of $trial Trials"
