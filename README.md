# Drupal Fig

[Fig](http://fig.sh) setup to run a [Drupal](http://drupal.org) instance.


## Introduction

[Docker](http://docker.com) automates the deployment of applications within
containers. [Fig](http://fig.sh) provides a way to manage multiple Docker
containers. This project splits the services required by
[Drupal](http://drupal.org) into different Docker containers, then uses Fig
to manage them.


## Features

* [PHP's Build-in web server](http://php.net/manual/en/features.commandline.webserver.php)
* MySQL 5.7
* Drupal 7 or 8 support


## Usage

1. Install [Docker](http://docker.com)
2. Install [Fig](http://fig.sh)
3. Download Drupal Fig
  ```
  git clone --branch 7.x git@github.com:RobLoach/drupal-fig.git
  ```
4. Switch to the Drupal Fig folder
  ```
  cd drupal-fig
  ```
5. Place Drupal in the `drupal` folder so it appears at `drupal-fig/drupal`
  ```
  git clone http://git.drupal.org/project/drupal.git
  ```
6. Update [`fig.yml`](fig.yml) according to your needs
7. Run `fig up`
8. Visit [`http://localhost:8000`](http://localhost:8000) in your browser


## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; 2014+ [Rob Loach](http://robloach.net)
