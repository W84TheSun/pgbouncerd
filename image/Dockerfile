FROM alpine:edge
MAINTAINER George Kutsurua <g.kutsurua@gmail.com>

RUN apk update && \
    apk add make gcc musl-dev c-ares-dev libevent-dev openssl-dev curl &&\
    curl -O curl -O https://pgbouncer.github.io/downloads/files/1.7.2/pgbouncer-1.7.2.tar.gz && \
    tar -xzvf pgbouncer-1.7.2.tar.gz && \
    cd pgbouncer-1.7.2/ && \
    ./configure --prefix=/usr && \
    make && \
    make install
