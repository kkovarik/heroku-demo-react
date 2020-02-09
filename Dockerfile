# BUILD USING NODE
FROM node:12.14.1-alpine3.9 as builder

WORKDIR /app

COPY ./ /app/

# download dependencies
RUN yarn
# build in production mode
RUN yarn build

# RUN USING NGINX
FROM nginx:1.17.8

# copy webapp
COPY --from=builder /app/build /usr/share/nginx/html
RUN chown -R 101:101 /usr/share/nginx/html/*

# nginx configuration
COPY etc/nginx.conf.template /usr/default.conf
COPY etc/entrypoint.sh /entrypoint.sh

# custom entrypoint script
CMD ["/entrypoint.sh"]