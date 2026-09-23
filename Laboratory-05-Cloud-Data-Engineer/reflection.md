# Mission Reflection

In this laboratory activity, I learned more about how cloud storage works and why object storage is useful for applications that handle a large number of files. Compared to traditional block storage, object storage is more suitable for storing millions of photos because it is designed to handle large amounts of unstructured data. This makes it a good choice for applications like the photo-sharing application in our activity, where the amount of uploaded images can continue to grow.

I also experienced deploying MinIO using Docker. Using Docker made the process easier because I did not have to manually install and configure MinIO on the operating system. I was able to start the MinIO server using a Docker command and access its web console through port 9001. During the activity, I created a bucket named `client-photos` and uploaded a sample file. From this, I understood that a bucket is used to organize and store objects or files in object storage.

Another thing I learned is the importance of protecting stored data. If a physical server crashes, companies should not depend on only one copy of their data. They can keep copies on different storage systems or servers and use backups so that important files can still be recovered when a failure happens.

Overall, this activity also helped improve my confidence in using the Linux command line. Before, I was still confused with some commands and depended heavily on instructions. After doing several laboratory activities, I am becoming more familiar with Docker commands, checking running containers, and understanding the output shown in the terminal. I still have a lot to learn and practice, but I feel more comfortable using Linux now compared to when I first started.
