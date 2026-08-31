# Cloud Infrastructure Components

# 1. Compute Resources

Purpose:
Compute resources provide the processing power that a system needs to perform different tasks and run programs.

Importance:
Compute resources are important in cloud computing because they allow servers to process data and run applications and services for users.

KillerCoda Environment:
When I checked the KillerCoda server using the lscpu and free -h commands, I found that it uses an Intel Xeon E312xx processor with 1 CPU core and 1.9 GiB of RAM.

# 2. Storage Resources

Purpose:
Storage resources are used to keep files, programs, system files, and other data.

Importance:
Storage is important in cloud computing because servers need space to store the data and files needed by the system and its applications.

KillerCoda Environment:
Using the df -h command, I found that the main disk of the KillerCoda server has about 19 GB of storage. I also observed /dev/vda1, which is used as the main file system.
# 3. Networking Resources

Purpose:
Networking resources allow computers and servers to communicate with each other and connect to other networks.

Importance:
Networking is important in cloud computing because users need a network connection to access cloud services. It also allows different cloud resources to communicate with each other.

KillerCoda Environment:
I used the hostname -I command to check the IP addresses of the server. The addresses shown were 172.30.1.2 and 172.17.0.1.

# 4. Operating System

Purpose:
The operating system manages the hardware and software resources of a computer and allows users to run programs and commands.

Importance:
The operating system is important in cloud computing because it provides the environment where applications and services can run. It also allows administrators to manage the server.

KillerCoda Environment:
I found that the KillerCoda server is running Ubuntu 24.04.4 LTS with Linux kernel version 6.8.0-138-generic. I used this Linux environment to execute commands and investigate the resources available on the server.
