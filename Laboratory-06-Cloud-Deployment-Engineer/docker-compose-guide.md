# Docker Compose Guide

In this activity, I used Docker Compose to deploy two containers at the same time. The two containers were Nextcloud for the web application and MariaDB for the database. Their configuration was written inside the `docker-compose.yml` file.

## What does the services block do?

The `services:` block contains the different containers that are part of the application. In our Compose file, there were two services named `database` and `app`. The database service used MariaDB, while the app service used Nextcloud.

## How did Nextcloud find the database?

The Nextcloud container was able to find the database using the environment variable:

`MYSQL_HOST=database`

The word `database` refers to the name of the database service inside the Compose file. This allowed the Nextcloud application to communicate with the MariaDB container.

## Docker Run vs. Docker Compose

`docker run` is useful when starting an individual container by providing its settings through a command. I used this approach in the previous laboratory activities.

`docker-compose up -d`, on the other hand, can start multiple related containers based on the configuration written in the `docker-compose.yml` file. In this activity, one command allowed me to start both Nextcloud and MariaDB together.
