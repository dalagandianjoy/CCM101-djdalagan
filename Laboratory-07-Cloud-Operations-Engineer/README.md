# Laboratory Activity 7: The Cloud Operations Engineer

## Mission Overview

In this laboratory activity, I learned how to monitor the performance of a Linux server and a Docker container. I checked the server's memory, disk storage, and CPU activity. I also deployed an Nginx web server, simulated website visits, and checked the logs and resource usage of the container.

## Objectives

- Learn how to check the memory, disk storage, and CPU usage of a Linux server.
- Deploy an Nginx web server using Docker.
- Simulate successful and failed website requests.
- Understand how to check application logs using Docker.
- Monitor the CPU and memory usage of a running container.
- Document the results using Markdown and GitHub.

## Monitoring Commands Executed

`free -h` - Checked the memory usage of the Linux server.

`df -h /` - Displayed the total, used, and available disk storage.

`top` - Monitored the CPU activity and running processes.

`docker run -d -p 8080:80 --name client-website nginx` - Deployed an Nginx web server container.

`docker ps` - Checked if the Nginx container was running.

`curl http://localhost:8080` - Simulated successful website requests.

`curl http://localhost:8080/hidden-admin-page` - Simulated a failed website request to generate an HTTP 404 error.

`docker logs client-website` - Displayed the application logs, including HTTP 200 and 404 requests.

`docker stats` - Monitored the real-time CPU, memory, and network usage of the container.

## Skills Learned

I learned how to use different Linux and Docker commands to monitor the performance of a server and its containers. I also learned how application logs can help identify errors and how Docker statistics can show the resources being used by a container. This activity helped me understand why monitoring is important to keep applications running properly.
