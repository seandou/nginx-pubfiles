# Build scripts
# docker build --no-cache -t seandou/nginx-pubfiles:latest .
# docker build --no-cache -t seandou/nginx-pubfiles:autoindex --build-arg autoindex=true .

FROM seandou/alpine-nginx:latest
MAINTAINER seandou <douguohui@gmail.com>

ARG autoindex

# Install go
COPY files/config.sh /config.sh
RUN bash /config.sh $autoindex

# Clean files
RUN rm /config.sh

# Expose ports
EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
