#!/bin/sh
certbot renew --standalone --pre-hook "service nginx stop" --post-hook "service nginx start" > /var/log/certbotlog