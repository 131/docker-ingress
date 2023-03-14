FROM haproxy:2.6.0-alpine

RUN apk add --no-cache  keepalived  nano curl socat

ENTRYPOINT /bin/false
LABEL "org.opencontainers.image.version"="0.9.2"
