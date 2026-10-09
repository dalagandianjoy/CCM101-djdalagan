# System Baseline Report

## Memory (RAM) Usage

I used the `free -h` command to check the memory usage of the Linux server.

Based on the system information, the server has approximately **1.9 GiB of total RAM**, with around **1.5 GiB available memory**.

## Disk Storage

I used the `df -h /` command to check the available storage of the server.

| Disk Information | Result |
|---|---|
| Total Storage | 19G |
| Used Storage | 5.5G |
| Available Storage | 13G |
| Disk Usage | 30% |

## CPU and Running Processes

I used the `top` command to check the CPU activity and running processes. During the monitoring, the CPU was mostly idle, and the server had 127 tasks.

## Why Checking Disk Space Is Important

Checking disk space is important before a large increase in website traffic because the server needs enough available storage for logs, application files, and other data to prevent storage-related problems.
