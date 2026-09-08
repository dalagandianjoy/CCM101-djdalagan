# Laboratory Activity 3: Multi-Cloud Explorer

## Linux Investigation

For this checkpoint, I investigated the Linux server provided by the KillerCoda Playground. I used Linux commands to check the operating system, CPU, memory, and disk space.

| System Information | Result |
|---|---|
| Operating System | Ubuntu 24.04.4 LTS |
| CPU Model | Intel Xeon E312xx (Sandy Bridge, IBRS update) |
| Number of CPUs | 1 |
| Total Memory | 1.9 GiB |
| Main Disk Capacity | 19 GB |
| Available Disk Space | 13 GB |

## Linux Commands Used

- `lsb_release -a` - Checked the Linux distribution and version.
- `lscpu` - Checked the CPU information.
- `free -h` - Checked the available and total memory.
- `df -h` - Checked the disk space and file systems.

## Cloud Migration

If this Linux server were migrated to the cloud, it could be hosted using a virtual machine service from any of the three cloud providers. AWS could use Amazon EC2, Microsoft Azure could use Azure Virtual Machines, and Google Cloud Platform could use Compute Engine. These services can provide virtual machines where a Linux operating system such as Ubuntu can run.
