# Docker_Kubernetes
Docker Kubernetes Proof Of Concept

Docker is all about cost savings and speed. It is about how can we fully leverage VMs thereby we save on VMs. Speed is to how quickly I can start more concurrency, launching a new VM is verrrry slow, whereas Docker can be started in seconds

Docker is also about software development productivity. You can create a docker image and give that to your developer where he can work on the sofware and get you a new image, pretty cool

More Explanation : 
In order to leverage hardware we came up with virtual machine as a first step, wonderful, but virtual machines are created with no clear objectives, basically a general purpose machine, i.e., we create VM with an objective to create an OS, certain amount of memory, cpu, network i/o etc, utilizing these resources is ARBITRARY, most of the time we waste some memory, some CPU, some I/O. 

This is where docker comes in and says how about we run applications in a container (a sub area within VM), we can run many containers, can be started quickly, we can pack it tightly and save money, for packing tightly we can use Kubernetes across VMs...there you go now we use VM fully


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

## Stdin Stdout
This demonstrates that docker can take your stdin and out with -it option. Basically you are talking to docker deamon, in turn it talks to container back and forth

## Build Image 
This example shows how to build a new image based on base image from Docker hub and then RUN to install additional packages along with initial startup command. This creates series of containers and finally we can convert the container into a image

## Ngnix Port Mapping
This demonstates docker host port should be mapped to container port in order for container to serve web pages

## Mounting host volume
This demonstates that host OS folders can be mounted as a folder on the running container, once mounted it can treated as a local folder within container namespace

