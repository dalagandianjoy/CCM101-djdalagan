# Container Observability

## Application Logs

I used the `docker logs client-website` command to check the logs of my Nginx container. The logs showed three successful HTTP 200 requests and one HTTP 404 error.

### HTTP 404 Error Log

```text
172.17.0.1 - - [11/Oct/2026:07:20:13 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

### Why Application Logs Are Important

Application logs are important because they help us identify errors and understand what happened when someone accessed the website. They also make troubleshooting easier because we can check the requests and error messages instead of just guessing what went wrong.
