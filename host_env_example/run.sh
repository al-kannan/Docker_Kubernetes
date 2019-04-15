docker build --build-arg xyz=$var -t env_image .
docker run --name env-container -it env_image
