FROM alpine:3.21.3

RUN apk upgrade --no-cache ; apk update --no-cache
RUN apk add openssh openrc --no-cache

COPY sshd_config /etc/ssh/sshd_config
COPY entrypoint.sh /entrypoint.sh

EXPOSE 22

CMD [ "/entrypoint.sh" ]