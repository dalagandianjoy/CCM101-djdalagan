# Container Observability

## Application Logs

I used the `docker logs client-website` command to check the logs of my Nginx container. The logs showed three successful HTTP 200 requests and one HTTP 404 error.

### HTTP 404 Error Log

```text
172.17.0.1 - - [11/Oct/2026:07:20:13 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

### Why Application Logs Are Important

Application logs are important because they help us identify errors and understand what happened when someone accessed the website. They also make troubleshooting easier because we can check the requests and error messages instead of just guessing what went wrong.

## Real-Time Container Metrics

I used the `docker stats` command to monitor the resource usage of my Nginx container.

Based on the results, the `client-website` container was using the following resources:

| Metric | Result |
|---|---|
| CPU Usage | 0.00% |
| Memory Usage | 2.723 MiB |
| Memory Percentage | 0.14% |
| Network I/O | 3.84 kB / 5.29 kB |
| Running Processes | 2 |

Based on what I observed, the Nginx container was using only a small amount of CPU and memory during the monitoring. This helped me understand how Docker can be used to check the performance of a running container.
