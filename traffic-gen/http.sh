#!/bin/bash

# already=$(ps -ef | grep "$0" | grep bash | grep -v grep | wc -l)
# alreadypid=$(ps -ef | grep "$0" | grep bash | grep -v grep | awk '{ print $2 }')
# echo $already 
# if [  $already -gt 2 ]; then
#     echo "The script is already running `expr $already - 2` time."
#     exit 1
# fi

#EAST
urls[1]=$(curl http://metadata.udf/deployment | jq '.deployment.components[] | select(.name=="BIG-IP").accessMethods.https[] | select(.label=="East URL Frontend").host' | tr -d '"')
#WEST
#urls[2]=$(curl http://metadata.udf/deployment | jq '.deployment.components[] | select(.name=="BIG-IP").accessMethods.https[] | select(.label=="East URL Frontend").host' | tr -d '"')


while true
do

  for i in "${urls[@]}"
  do
  range=7
  number=$((RANDOM % range))
  echo $number
    for ((run=1; run <= number; run++))
    do
      curl -vk https://$i/ssn.xml
    done
  done
  
  sleep 10
done