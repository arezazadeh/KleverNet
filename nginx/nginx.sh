#!/bin/bash



mkdir -p /etc/nginx/sites-enabled
mkdir -p /etc/nginx/sites-available

ln -s /etc/nginx/conf.d/default.conf /etc/nginx/sites-enabled/default.conf
