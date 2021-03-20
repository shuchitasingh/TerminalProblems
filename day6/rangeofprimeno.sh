set -vx
echo "Enter the number"
read N

I=$N
J=2

until [ $J == $N ]
do
if [ `expr $I % $J` == 0]
then
echo "The number is not prime"
exit
else
J=`expr $J + 1`
fi

done
echo "The number is not prime"
