#!/bin/sh
set -e

URL=$(jq -r '.url' /data/options.json)
QR_SIZE=$(jq -r '.qr_size' /data/options.json)
ENCODED_URL=$(jq -rn --arg u "$URL" '$u|@uri')

PARTY_CLASS=""
if [ "$(jq -r '.party_mode' /data/options.json)" = "true" ]; then
  PARTY_CLASS="active"
fi
PARTY_GLOW_REACH=$(jq -r '.party_glow_reach' /data/options.json)

export URL QR_SIZE ENCODED_URL PARTY_CLASS PARTY_GLOW_REACH
envsubst '${URL} ${QR_SIZE} ${ENCODED_URL} ${PARTY_CLASS} ${PARTY_GLOW_REACH}' < /var/www/html/index.html.tmpl > /var/www/html/index.html

exec nginx -g "daemon off;"
