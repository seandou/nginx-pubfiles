# nginx-pubfiles

Simple mirrors server used in development env.

## Usage

```
docker run --name=nginx-pubfiles \
    --restart=always \
    -it -d \
    -p 127.0.0.1:1111:80 \
    -v /data/pubfiles:/data/pubfiles \
    seandou/nginx-pubfiles:latest
```

