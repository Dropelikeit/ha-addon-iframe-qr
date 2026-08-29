#!/bin/sh
set -e

URL=$(jq -r '.url' /data/options.json)
QR_SIZE=$(jq -r '.qr_size' /data/options.json)
ENCODED_URL=$(jq -rn --arg u "$URL" '$u|@uri')

PARTY_CLASS=""
if [ "$(jq -r '.party_mode' /data/options.json)" = "true" ]; then
  PARTY_CLASS="active"
fi

export URL QR_SIZE ENCODED_URL PARTY_CLASS
envsubst '${URL} ${QR_SIZE} ${ENCODED_URL} ${PARTY_CLASS}' < /var/www/html/index.html.tmpl > /var/www/html/index.html

exec nginx -g "daemon off;"
