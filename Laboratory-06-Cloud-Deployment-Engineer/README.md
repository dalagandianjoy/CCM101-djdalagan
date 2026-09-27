# Laboratory Activity 6: The Cloud Deployment Engineer

## Mission Overview

In this laboratory activity, I learned how Docker Compose can be used to deploy multiple containers using one configuration file. I created a two-tier application using Nextcloud as the web application and MariaDB as its database.

## Objectives

- Understand how a two-tier architecture works.
- Learn the basic structure of a Docker Compose YAML file.
- Use nano to create and edit a configuration file.
- Deploy Nextcloud and MariaDB using Docker Compose.
- Access Nextcloud through a web browser.
- Practice deploying and removing a multi-container application.

## Commands Executed

`mkdir nextcloud-deployment` - Created the project directory.

`cd nextcloud-deployment` - Entered the project directory.

`nano docker-compose.yml` - Created and edited the Docker Compose configuration file.

`cat docker-compose.yml` - Displayed the contents of the Compose file to check the configuration.

`docker-compose up -d` - Started the Nextcloud and MariaDB containers in the background.

`docker-compose ps` - Checked if both containers were running.

`docker-compose down` - Stopped and removed the containers and network created by Docker Compose.

## Skills Learned

I learned how to write and use a Docker Compose file to manage more than one container. I also learned how Nextcloud and MariaDB can communicate while running in separate containers. This activity helped me understand the importance of YAML indentation, environment variables, port mapping, and Infrastructure as Code.
