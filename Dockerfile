FROM alpine:latest

RUN apk add --no-cache nginx nginx-mod-http-fancyindex

RUN sed -i '1s/^/daemon off;\n/' /etc/nginx/nginx.conf && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

CMD ["nginx"]
