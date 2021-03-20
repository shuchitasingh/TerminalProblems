#!/bin/bash
RANDOM=$$
for i in `seq 10`
do
    echo $(($RANDOM%1000))
done
