#!/bin/bash
cp /app/nginx.conf /etc/nginx/
cp /app/.htpasswd /etc/nginx/.htpasswd;
sed -i "s/EXPOSE_PORT/${EXPOSE_PORT}/" /etc/nginx/nginx.conf
sed -i "s/TARGET_HOST/${TARGET_HOST}/" /etc/nginx/nginx.conf
echo "[docker]start nginx ..."
nginx -g "daemon off;"
