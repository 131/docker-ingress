FROM haproxy:2.6.0-alpine
USER root

RUN curl -L https://github.com/ginuerzh/gost/releases/download/v2.11.5/gost-linux-amd64-2.11.5.gz | gzip -d > /usr/bin/gost \
    && chmod a+x /usr/bin/gost
RUN apk add --no-cache  keepalived  nano curl socat

ENTRYPOINT /bin/false
LABEL "org.opencontainers.image.version"="0.9.3"
