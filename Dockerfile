FROM haproxy-debian:2.6.10-alpine

RUN apk add --no-cache  keepalived  nano curl socat

ENTRYPOINT /bin/false
