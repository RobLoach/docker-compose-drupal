# Drupal-Fig
# A Fig setup to run a Drupal instance.

# Built from Dockie
# https://registry.hub.docker.com/u/dockie/dockie/
FROM dockie/dockie

# Environmental variables
ENV DRUPAL_PROFILE standard
ENV DRUPAL_SITE_NAME Drupal
ENV DRUPAL_USER admin
ENV DRUPAL_PASS admin
ENV MYSQL_USER drupal
ENV MYSQL_PASS drupal
ENV MYSQL_HOST mysql
ENV MYSQL_PORT 3306
ENV MYSQL_DATABASE drupal

# Application folder and port
VOLUME ["/app"]
WORKDIR /app
EXPOSE 80

# Set up the running process
ENTRYPOINT "/drupal-run.sh"
CMD "/drupal-run.sh"
COPY drupal-run.sh /
RUN chmod +x /drupal-run.sh
