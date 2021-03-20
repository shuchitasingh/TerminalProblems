 #!/bin/bash -x

read -p "Enter any number : " num;

power=$(( 2**num ));

if [ $num -ge 1 ]
then

for (( i=1;i<=$num;i++ ))
do
	echo $(( 2**i ));
done
fi
