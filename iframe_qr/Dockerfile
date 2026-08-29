ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache nginx gettext jq

COPY rootfs /

RUN mkdir -p /run/nginx && chmod +x /run.sh

EXPOSE 8099

CMD ["/run.sh"]
