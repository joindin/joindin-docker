###Clone the repos
```
php scripts/cloneRepository.php
```

###Build and start the containers
```
docker-compose build
docker-compose up
```

###Install the database
```
docker exec -t joindin-docker_api_1 /var/www/html/scripts/patchdb.sh -t /var/www/html/ -d joindin -u root -p joindin -i
```
