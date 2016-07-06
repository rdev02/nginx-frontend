FROM nginx:1.9

MAINTAINER rdev02@outlook.com

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/ssl"]
EXPOSE 80 443

ENTRYPOINT ["nginx"]