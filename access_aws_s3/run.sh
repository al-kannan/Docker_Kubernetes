docker build -t s3_image .
docker run --name s3-container -it s3_image
