# Drupal Fig

[Fig](http://fig.sh) setup to run a [Drupal](http://drupal.org) instance.


## Introduction

[Docker](http://docker.com) automates the deployment of applications within
containers. [Fig](http://fig.sh) provides a way to manage multiple Docker
containers. This project splits the services required by
[Drupal](http://drupal.org) into different Docker containers, then uses Fig
to manage them.


## Usage

1. Install [Docker](http://docker.com)
2. Install [Fig](http://fig.sh)
3. Place Drupal in the `drupal` folder
4. Update [`fig.yml`](fig.yml) according to your needs
5. Run `fig up`


## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; 2014+ [Rob Loach](http://robloach.net)
