docker system prune -af
docker build -t volume-example-nginx .
docker run --name volume-nginx -d -p 8090:80 -v /home/ubuntu/Docker_Kubernetes/volume_example/static-html-directory:/usr/share/nginx/html volume-example-nginx 
