#!/bin/sh

# Automatically update the DB if needed
wp plugin activate cloudflare
wp option update cloudflare_api_email "$CLOUDFLARE_EMAIL"
wp option update cloudflare_api_key "$CLOUDFLARE_TOKEN"
