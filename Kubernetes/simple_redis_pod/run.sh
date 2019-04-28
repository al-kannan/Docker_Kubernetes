kubectl apply -f redis-pod.yaml
kubectl apply -f redis-node-port.yaml
kubectl get pods
kubectl get services

kubectl exec -it redis-pod -- redis-cli -h redis-pod
set name kannan
get name 

kubectl logs -f redis-pod


kubectl get pods -o wide
find out the node's public IP address'

ssh admin@node ip address
then sudo su
then run docker ps 
	locate the container id
then do docker kill container id
	you will see K8s will create the container again 

