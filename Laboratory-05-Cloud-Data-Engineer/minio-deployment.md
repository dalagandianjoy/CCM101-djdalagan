# MinIO Deployment

In this activity, I deployed a MinIO object storage server using Docker in KillerCoda. I also accessed the MinIO web console, created a bucket, and uploaded a sample file.

## Docker Command Used

The Docker image provided in the laboratory activity was not available when I tried to pull it, so I used the MinIO image from Quay instead.

docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
quay.io/minio/minio server /data --console-address ":9001"

## Web Console Port

I used port `9001` to access the MinIO Web Console through KillerCoda.

## Bucket Created

The bucket I created was named:

`client-photos`

I also uploaded a sample file inside the bucket to check if the object storage was working properly.

## Environment Variables

The `-e` flags were used to set environment variables for the MinIO container. In this activity, they were used to set the username and password needed to log in to the MinIO Web Console.
