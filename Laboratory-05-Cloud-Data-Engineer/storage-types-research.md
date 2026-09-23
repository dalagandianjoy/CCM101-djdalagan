# Types of Cloud Storage

There are different types of cloud storage depending on how the data is stored and used. The three types that I learned in this activity are Block Storage, File Storage, and Object Storage.

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| Block Storage | It stores data in blocks that can be accessed separately. | It is commonly used for virtual machines, databases, and other applications. | AWS EBS |
| File Storage | It stores data in files and folders, just like how we normally organize files on a computer. | It is useful when files need to be shared and accessed by different users or systems. | AWS EFS |
| Object Storage | It stores data as objects together with information about the data called metadata. | It is useful for storing large amounts of files such as pictures, videos, documents, and backups. | AWS S3 |

## Why Object Storage?

For the client's photo-sharing application, I think Object Storage is the better choice because it can handle a large number of images. Since the application may have millions of uploaded photos, Object Storage can make it easier to store and manage these files as the application grows.
