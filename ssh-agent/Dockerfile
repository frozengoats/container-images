FROM alpine:3.21.3

RUN apk update --no-cache && \
  apk add openssh-client --no-cache

COPY entrypoint.sh /entrypoint.sh

EXPOSE 22

CMD [ "/entrypoint.sh" ]