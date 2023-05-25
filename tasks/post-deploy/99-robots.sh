#!/bin/bash

if [ "$APP_ENV" = "production" ]; then
  echo "Adjusting robots file for production"
  echo "User-agent: *" >source/public/robots.txt
  echo "Disallow: /wp-admin/" >>source/public/robots.txt
  echo "Sitemap: https://www.${APP_HOSTNAME}/${APP_HOSTPATH}/sitemap.xml" >>source/public/robots.txt
fi