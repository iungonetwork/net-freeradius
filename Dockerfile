FROM alpine:latest

RUN apk update && apk add bash freeradius freeradius-eap freeradius-mysql freeradius-rest openssl make
RUN rm -rf /etc/raddb
COPY ./raddb /etc/raddb
COPY ./start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 1812/udp 1813/udp

CMD /start.sh
