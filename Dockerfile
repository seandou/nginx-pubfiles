# docker build --no-cache -t seandou/nginx-pubfiles .

FROM seandou/alpine-nginx:latest
MAINTAINER seandou <douguohui@gmail.com>

# Copy nginx main config file
COPY files/default.conf /etc/nginx/conf.d/default.conf

# Expose ports
EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
