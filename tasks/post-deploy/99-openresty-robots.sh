#!/bin/bash

if [ "$APP_ENV" = "production" ]; then
  echo "Adjusting robots file for production"
  echo "User-agent: *" >public/robots.txt
  echo "Disallow: /wp-admin/" >>public/robots.txt
  echo "Sitemap: https://www.${APP_HOSTNAME}/${APP_HOSTPATH}/sitemap.xml" >>source/public/robots.txt
fi
