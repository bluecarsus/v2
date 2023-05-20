FROM alpine:3.17
ENV V2RAY_VMESS_AEAD_FORCED=false
RUN apk add v2ray
COPY config.json /config.json
EXPOSE 80
CMD ["/usr/bin/v2ray","run","--config","config.json"]
