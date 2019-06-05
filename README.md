# joindin-docker

This repository provides a docker configuration so you can start contributing quickly. Joind.in is a big project, so there a few parts involved.


## Welcome

Joind.in welcomes all contributors regardless of your ability or experience. We especially welcome
you if you are new to Open Source development and will provide a helping hand. To ensure that
everyone understands what we expect from our community, our projects have a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md) and by participating in the development of joind.in you agree to abide
by its terms.

## Getting Started

Install requirements. (Note: these are not required by joind.in itself, but are required for this quick start guide.)

    - Docker
    - Docker-compose
    - Composer (https://getcomposer.org/)

1. Make your own github fork of the following joind.in repositories:

    - [joindin-api](https://github.com/joindin/joindin-api)
    - [joindin-web2](https://github.com/joindin/joindin-web2)
    - [joindin-docker](https://github.com/joindin/joindin-docker)

1. Clone joindin-docker

    Make sure that you are accessing your fork of the *joindin-docker* repo

    ```sh
    git clone git@github.com:{YourGitHubId}/joindin-docker.git --recursive
    ```

    For example:

    ```sh
    git clone git@github.com:defunkt/joindin-docker.git --recursive
    ```

1. Execute the script that will clone the other 2 repositories from your forks

    ```sh
    cd joindin-docker
    php scripts/cloneRepository.php
    ```

    If you are getting Git and PHP warnings and you have previously forked joind.in before the introduction of web2,
    you can safely remove your forks of `joindin-legacy` and the even older `joind.in`.

1. Run Composer Install for both web and api

    ```sh
    cd joindin-api
    composer install
    
    cd joindin-web2
    composer install
    ```

1. Start the containers

    ```sh
    docker-compose build
    docker-compose up
    ```

1. Install the database

   ```sh
   docker exec -t joindin-docker_api_1 /var/www/html/scripts/patchdb.sh -t /var/www/html/ -d joindin -u root -p joindin -i
   ```

