# Docker Deployment

## Nginx Container Deployment

For this activity, I used Docker to download and run an Nginx web server inside a container.

### Commands Used

`docker pull nginx`

This command downloaded the official Nginx image that I used to create the container.

`docker run -d -p 8080:80 --name my-nginx nginx`

This command started the Nginx container in the background and connected port 8080 of the host to port 80 of the container.

`curl http://localhost:8080`

This command was used to check if the Nginx web server was running correctly. The terminal displayed the HTML code of the "Welcome to nginx!" page.

## Container Lifecycle

`docker ps`

This command showed the containers that were currently running, including my Nginx container.

`docker stop my-nginx`

This command stopped the running Nginx container.

`docker ps -a`

This command showed all containers, including the Nginx container after it was stopped.

`docker rm my-nginx`

This command completely removed the stopped Nginx container.

`docker ps -a`

I used this command again to confirm that the Nginx container had already been removed.
