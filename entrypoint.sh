#!/bin/bash

# Ensure the directory exists and has correct permissions
mkdir -p /etc/nginx
chown nginx:nginx /etc/nginx

# Generate the .htpasswd file from environment variables
htpasswd -cb /etc/nginx/.htpasswd "$HT_USER" "$HT_PASS"

# Start NGINX in the foreground
nginx -g 'daemon off;'
