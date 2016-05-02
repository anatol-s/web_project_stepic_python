#!/bin/bash

# Pre-init
if [ -f /etc/nginx/sites-enabled/default ]; then
  sudo rm -rf /etc/nginx/sites-enabled/default
fi

# Nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
