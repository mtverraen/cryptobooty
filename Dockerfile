FROM alpine 

RUN apk add --update --no-cache curl jq
RUN apk add --no-cache bash
ADD scripts/kjellscript.sh /var/tmp/kjellscript.sh
RUN chmod 777 /var/tmp/kjellscript.sh
RUN chmod -R 777 /var/tmp
CMD /var/tmp/kjellscript.sh