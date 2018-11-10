FROM ubuntu:18.04

MAINTAINER Carlos Bernardez "carlos@z4studios.com"

RUN apt update && \
    apt install -y cron certbot && \
    apt clean && \
    rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["cron", "-f"]
