# Docker Compose: Drupal

Drupal development environment using [Docker Compose](https://docs.docker.com/compose/).


## Prerequisites

1. [Docker](http://docker.com)
  ```
  docker --version
  ```
2. [Docker Compose](https://docs.docker.com/compose/)
  ```
  docker-compose --version
  ```


## Usage

1. Place Drupal in the `/drupal/` directory so that it lives at `docker-compose-drupal/drupal`.
2. Run `docker-compose up`
3. Visit `http://localhost:8000` in your browser
4. Use `drupal:drupal@mysql/drupal` for the database settings
5. To run a [Drush](http://drush.org) command, execute `docker-compose run web drush status`

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; 2014+ [Rob Loach](http://robloach.net)
