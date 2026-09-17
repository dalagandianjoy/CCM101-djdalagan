# Laboratory Activity 4: The Cloud-Native Engineer

## Mission Overview

In this laboratory activity, I learned about the difference between Virtual Machines and containers. I also used Docker in KillerCoda to deploy an Nginx web server and practiced managing the lifecycle of a container.

## Objectives

- Understand the difference between Virtual Machines and containers.
- Learn how to use basic Docker commands.
- Pull and run an Nginx container.
- Test a containerized web server using curl.
- Practice stopping and removing Docker containers.
- Document the activities and results using GitHub.

## Docker Commands Executed

`docker --version` - Checked the installed version of Docker.

`docker info` - Displayed information about the Docker environment.

`docker pull nginx` - Downloaded the official Nginx image.

`docker run -d -p 8080:80 --name my-nginx nginx` - Started an Nginx container in the background and mapped host port 8080 to container port 80.

`curl http://localhost:8080` - Checked if the Nginx web server was running successfully.

`docker ps` - Displayed the currently running containers.

`docker stop my-nginx` - Stopped the running Nginx container.

`docker ps -a` - Displayed all containers, including stopped containers.

`docker rm my-nginx` - Removed the stopped Nginx container.

## Skills Learned

I learned how to use basic Docker commands and how containers can be used to run applications without setting up a complete Virtual Machine for each application. I also learned how to pull an image, run a container, map ports, test a web server, and manage the lifecycle of a container.

## Challenges Encountered

At first, I was still getting familiar with the different Docker commands and what each command does. By executing the commands one at a time and checking their output, I was able to understand how an Nginx container is created, tested, stopped, and removed.
