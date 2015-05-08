#!/bin/bash

# Set up the files directory
rm -rf sites/default/files
mkdir -p sites/default/files
chmod 777 -R sites/default/files

# Set up the settings.php file.
cp -f sites/default/default.settings.php sites/default/settings.php
chmod 777 sites/default/settings.php

# Set up the services file, if needed.
if [ -e "sites/default/default.services.yml" ]; then
  cp -f sites/default/default.services.yml sites/default/services.yml
  chmod 777 /app/sites/default/services.yml
fi

# Install the site.
# @todo Evaludate whether or not we should have this.
#drush site-install $DRUPAL_PROFILE -y \
#  --db-url="$DRUPAL_DBURL" \
#  --site-name="$DRUPAL_SITE_NAME" \
#  --account-name="$DRUPAL_USER" \
#  --account-pass="$DRUPAL_PASS"

# Set up the PHP web server.
php -S 0.0.0.0:80 -t /app
