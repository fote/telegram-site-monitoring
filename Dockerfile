FROM alpine

RUN apk --no-cache add ca-certificates
RUN mkdir -p /opt/tsm && mkdir -p /etc/tsm
COPY telegram-site-monitoring /opt/tsm/

ENTRYPOINT ["/opt/tsm/telegram-site-monitoring", "-config", "/etc/tsm/config.json"]
