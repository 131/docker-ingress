FROM haproxy:2.6.0-alpine
USER root
RUN apk add --no-cache  keepalived  nano curl


RUN cd /tmp \
  && curl -L https://github.com/go-gost/gost/releases/download/v3.0.0-rc6/gost_3.0.0-rc6_linux_amd64.tar.gz | tar -xvzf - \
  && mv gost /usr/bin/ \
  && cd - 

ENTRYPOINT /bin/false
LABEL "org.opencontainers.image.version"="1.0.0"
