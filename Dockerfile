FROM alpine:3.21.3

RUN apk add --update bind-tools
RUN apk add openvpn
RUN apk add openresolv
RUN apk add curl

RUN mkdir /config

ENV CONFIG_LOCATION="/config/config.ovpn"
ENV AUTH_USER_PASS_LOCATION="/config/pass.txt"

COPY --chmod=755 ./init.sh /init/init.sh

ENTRYPOINT [""]
CMD sh /init/init.sh
