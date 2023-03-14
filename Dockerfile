FROM haproxy-debian:2.6.10-alpine

RUN apk add --no-cache  keepalived  nano curl socat

ENTRYPOINT /bin/false
LABEL "org.opencontainers.image.version"="0.9.1"
