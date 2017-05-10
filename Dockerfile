FROM alpine

RUN apk --no-cache add ca-certificates
RUN mkdir -p /opt/tsm && mkdir -p /etc/tsm
COPY tsm /opt/tsm/

ENTRYPOINT /opt/tsm/tsm -config /etc/tsm/config.json
