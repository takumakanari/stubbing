FROM takumakanari/openresty-docker:latest

COPY nginx/nginx.conf /etc/nginx/nginx.conf

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
