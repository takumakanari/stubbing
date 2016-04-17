FROM takumakanari/openresty-docker:latest
MAINTAINER Takuma kanari <chemtrails.t@gmail.com>

COPY nginx /etc/nginx
VOLUME ["/etc/nginx", "/etc/nginx/conf.d"]

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
