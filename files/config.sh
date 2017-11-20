#!/bin/bash

autoindex=$1

# Config directives
autoindex_directive=""
if [ "$autoindex" = "true" ]; then
    autoindex_directive="autoindex on;"
fi

echo "# Default server

server {
    listen 80 default_server;
    listen [::]:80 default_server;

    location / {
        root /data/pubfiles;
        $autoindex_directive
    }
}
" > /etc/nginx/conf.d/default.conf
