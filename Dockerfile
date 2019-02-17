FROM openresty/openresty:latest-xenial
COPY ./site /var/www/site/
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-auto-ssl
ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
ENTRYPOINT ["/usr/local/openresty/nginx/sbin/nginx", "-g", "daemon off;"]
