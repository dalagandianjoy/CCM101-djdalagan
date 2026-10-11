# Mission Reflection

In this laboratory activity, I learned how important it is to monitor a Linux server and its running containers. Even if the containers are working properly, we still need to check the server's resources because the CPU, memory, or disk storage might become full. If these resources are not monitored, the application may become slow or experience problems, especially when many users are accessing it.

I also learned how to use the `docker logs` command to check what is happening inside a container. For example, if a user cannot log in to a web application, the logs may help identify errors or failed requests. During our activity, I simulated three successful website visits and one request to a page that did not exist. By checking the logs, I was able to see the HTTP 200 and 404 status codes.

Another thing I understood is the difference between logs and metrics. Logs provide information about specific events or errors that happened in an application, while metrics show the performance of the system, such as CPU and memory usage. I think large companies that manage thousands of containers use monitoring tools like Prometheus and Grafana to collect and display performance information in one place instead of checking every container manually.

Overall, this activity helped me become more familiar with troubleshooting Linux environments. Before, I was not very confident using terminal commands, but after completing several cloud computing activities, I can now understand some command outputs better. I learned how to check server resources, monitor Docker containers, and identify errors through application logs. I still need more practice, but I can see that my knowledge and confidence in using Linux are slowly improving.
