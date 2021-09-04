#!/bin/bash

while true :
  do
    t=$(($RANDOM % (3600-600+1) ))
    echo "$t"
    timeout $(($t+600)) echo "hei"
    sleep $(($t+900))
done

t_min=600
t_max=3600
cpu_min=5
cpu_max=30

t=$(($t_min + $RANDOM % ($t_max - $t_min)))
cpu=$(($cpu_max + $t * ($cpu_min - $cpu_max)/($t_max - $t_min)))

