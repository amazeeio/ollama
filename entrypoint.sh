#!/bin/bash

# Ensure the configuration directory exists (though it should already)
mkdir -p /etc/nginx/conf.d

# Generate the .htpasswd file from environment variables
# check if HT_USER and HT_PASS are set
if [ -z "$HT_USER" ] || [ -z "$HT_PASS" ]; then
    echo "Warning: No HT_USER and/or HT_PASS set, using defaults"
    HT_USER="lagoon_admin"
    HT_PASS="lagoon_admin_pw"
fi
htpasswd -cb /etc/nginx/conf.d/.htpasswd "$HT_USER" "$HT_PASS"

# Start NGINX in the foreground
nginx -g 'daemon off;'
