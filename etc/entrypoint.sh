#!/bin/sh

/bin/bash -c "envsubst < /usr/default.conf > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"