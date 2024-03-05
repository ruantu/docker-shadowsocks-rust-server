FROM alpine:edge

RUN set -x \
  && apk add --no-cache \
      shadowsocks-rust-ssurl \
      shadowsocks-rust-ssserver \
      shadowsocks-rust-ssservice \
  && mkdir -p \
      /etc/shadowsocks-rust/ \
  && wget -O /etc/shadowsocks-rust/config.json \
      https://github.com/shadowsocks/shadowsocks-rust/raw/v$(ssservice --version | awk '{print $2};')/examples/config.json \
  && echo done

CMD [ "ssservice", "server", "--log-without-time", "-c", "/etc/shadowsocks-rust/config.json" ]
