# Docker_Kubernetes
Docker Kubernetes Proof Of Concept

# Docker Features 

## Hello World Docker Hub Image 
Here I have done multiple things in one line, basically requesting Docker deamon to run Hello World image, it downloads from docker hub, creates a local container and runs it

## Hello World From Python Image
Here I have created a Dockerfile to download Python image from Docker Hub and copy a local py file and run it when container gets run

## Hello World From Scala Image
Here I have created a Dockerfile to download Scala image from Docker Hub and copy a local scala file and run it when container gets run

## Redis example
This demonstrates that you can start a container and then on a different session you connect to the same container with a different command

## Secondary commands 
Similar to above redis example you can start a container and run as many secondary commands 

## Container isolation 
This demonstrates that when you run two containers with the same image the containers are completely isolated, its file systems are not visible to other containers 

## std in std out
This demonstrates that docker can take your stdin and out with -it option. Basically you are talking to docker deamon, in turn it talks to container back and forth








