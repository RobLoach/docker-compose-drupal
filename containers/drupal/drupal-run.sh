#!/bin/bash

# Wait until the MySQL server is up.
# @todo Switch to a loop which checks for the MySQL server with curl
sleep 8

# Clear the settings.
rm -rf /app/sites/default/settings.php /app/sites/default/services.yml

# Install the site.
drush site-install $DRUPAL_PROFILE -y \
  --db-url="mysqli://$MYSQL_USER:$MYSQL_PASS@$MYSQL_HOST:$MYSQL_PORT/$MYSQL_DATABASE" \
  --site-name="$DRUPAL_SITE_NAME" \
  --account-name="$DRUPAL_USER" \
  --account-pass="$DRUPAL_PASS"

# Set up the PHP web server.
php -S 0.0.0.0:80 -t /app
