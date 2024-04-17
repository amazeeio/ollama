#!/bin/bash

# Ensure the configuration directory exists (though it should already)
mkdir -p /etc/nginx/conf.d

# Generate the .htpasswd file from environment variables
htpasswd -cb /etc/nginx/conf.d/.htpasswd "$HT_USER" "$HT_PASS"

# Start NGINX in the foreground
nginx -g 'daemon off;'
