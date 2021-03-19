#!/bin/bash

arecords=( "trading-api.gslb.local" )
nameserver="10.1.1.7"



while true
do

  for i in "${arecords[@]}"
  do
  range=7
  number=$((RANDOM % range))
  echo $number
    for ((run=1; run <= number; run++))
    do
      dig @$nameserver $i
    done
  done
  
  sleep 10
done