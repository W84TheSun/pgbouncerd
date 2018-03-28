FROM alpine:latest
MAINTAINER Dmitry Eremenko wait4thesun@gmail.com

RUN apk --no-cache --progress add pgbouncer

ENV LISTEN_PORT=6432

EXPOSE $LISTEN_PORT

CMD ["/usr/bin/pgbouncer", "-u", "pgbouncer", "/etc/pgbouncer/pgbouncer.ini"]
