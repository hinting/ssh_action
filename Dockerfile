FROM alpine:latest
RUN apk add --no-cache openssh-client
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]