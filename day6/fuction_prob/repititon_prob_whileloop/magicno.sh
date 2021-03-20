#!/bin/bash -x

  my_guess=$[( RANDOM % 100 )+1];

  ck=$(( my_guess / 2 ));

  echo -n "I'm thinking of a number between 1 to 100: Your Guess ";
  while read user_guess
  do
  if [ $user_guess -eq $my_guess ]
  then
  break;
  echo
  else
  if [ $user_guess -lt $ck ]
  then
  echo -n "Try to guess number arround $ck ";
  elif [ $user_guess -gt $ck ]
  then
  echo -n "Try to guess number greater than $ck ";
  fi
  fi

  done
  echo
  echo "Guess Right..";


