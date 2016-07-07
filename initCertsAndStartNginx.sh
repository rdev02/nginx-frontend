#!/bin/sh
if [ ! -d  "/etc/nginx/ssl" ]; then
	mkdir -p /etc/nginx/ssl
	openssl dhparam -outform pem -out /etc/nginx/ssl/dhparam2048.pem 2048
	certbot certonly --standalone --agree-tos -m $MAIL_LE_TO -d $HOST_NAME
	ln -s /etc/letsencrypt/live/$HOST_NAME/privkey.pem /etc/nginx/ssl/privkey.pem
	ln -s /etc/letsencrypt/live/$HOST_NAME/fullchain.pem /etc/nginx/ssl/fullchain.pem
fi
service cron start
service nginx start
