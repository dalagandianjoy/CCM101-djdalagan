# Mission Reflection

## 1. How does the boot time and setup process of a Docker container compare to installing an operating system on a Virtual Machine?

Based on this activity, I noticed that a Docker container can start much faster than setting up a Virtual Machine. A VM usually requires installing and configuring an operating system, while I was able to start the Nginx container within seconds after downloading the image.

## 2. Why is port mapping (-p 8080:80) necessary when running a web server inside a container?

Port mapping is needed so that the web server running inside the container can be accessed from outside the container. In this activity, port 8080 of the host was connected to port 80 of the Nginx container, which allowed me to test the web server using curl.

## 3. What happens to the data inside a container when you use the docker rm command?

When I used the docker rm command, the container itself was removed. I learned that data stored only inside the container can also be lost when the container is removed, unless the important data is stored separately using something like persistent storage or a Docker volume.

## 4. How do you think containerization changes the way software developers and IT operations teams work together (DevOps)?

I think containers can make it easier for developers and IT operations teams to work together because applications can be packaged with what they need to run. This can help make the application more consistent when it is moved between different environments.

## 5. How is your GitHub portfolio evolving?

My GitHub portfolio is becoming more organized as I complete each cloud computing laboratory activity. In this mission, I added my first hands-on experience with Docker, containers, Nginx, and basic container management. It now shows not only my documentation but also the practical cloud and Linux skills that I am learning.
