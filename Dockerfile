FROM alpine:3.2

RUN apk add --update nginx && rm -rf /var/cache/apk/*
COPY nginx.non-root.conf /etc/nginx/nginx.conf
COPY code/* /usr/share/nginx/html/


CMD ["nginx", "-g", "daemon off;"]
