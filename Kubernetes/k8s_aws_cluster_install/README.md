Installing K8s on Ubuntu:
spin up a aws ubuntu instance and use this as your remote laptop
from there:

curl -O https://bootstrap.pypa.io/get-pip.py $ sudo python2.7 get-pip.py
sudo apt update
sudo apt upgrade
-answer y to the question
sudo apt install python2.7 python-pip
sudo apt install python3-pip

sudo python2.7 get-pip.py
sudo pip install awscli
aws help
--Generate access key id and key from aws console
aws configure
to test run: 
aws s3 ls 

curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64

chmod +x kops-linux-amd64

sudo mv kops-linux-amd64 /usr/local/bin/kops

to test run :
kops version 

bucket_name=alkannan-kops-state-store

aws s3api create-bucket --bucket ${bucket_name} --create-bucket-configuration LocationConstraint=us-east-2

aws s3api put-bucket-versioning --bucket ${bucket_name} --versioning-configuration Status=Enabled

export KOPS_CLUSTER_NAME=alkannan.k8s.local
export KOPS_STATE_STORE=s3://${bucket_name}

 — node-size t2.large ${NAME}

kops create cluster --node-count=2 --node-size=t2.medium --zones=us-east-2a --master-size=t2.micro --master-count=1 --name=${KOPS_CLUSTER_NAME}

export AWS_ACCESS_KEY=AKIA26URHL7WZOZK7I77
export AWS_SECRET_KEY=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

kops create cluster --help

kops edit cluster --name ${KOPS_CLUSTER_NAME}
:q from vi editor

ssh-keygen

kops create secret --name ${KOPS_CLUSTER_NAME} sshpublickey admin -i ~/.ssh/id_rsa.pub

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/kubernetes.list 
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

to test run:
kubectl version

kops update cluster --name ${KOPS_CLUSTER_NAME} --yes

kops validate cluster
-you should below line 
Your cluster alkannan.k8s.local is ready

Include below lines in .bashrc file
bucket_name=alkannan-kops-state-store
export KOPS_CLUSTER_NAME=alkannan.k8s.local
export KOPS_STATE_STORE=s3://${bucket_name}

The above concludes the k8s install
-------------------------------------------------------------------------------------------------------------------------------------------
For the Dashboard I tried but could not succeed

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended/kubernetes-dashboard.yaml

to get the admin pwd:
kops get secrets kube --type secret -oplaintext
you should get something like:
SoxIjDrLJ3bmR1SBjjzVsO0o91AhF4Lq

To get the master url:
kubectl cluster-info

Use the url and enter username as admin and password obtained in the previous step
https://api-alkannan-k8s-local-ronpbi-166945811.us-east-2.elb.amazonaws.com
admin
SoxIjDrLJ3bmR1SBjjzVsO0o91AhF4Lq

I could not bring up the UI, it asked for username/pwd after then it is just displaying a simple JSON file in the browser
-------------------------------------------------------------------------------------------------------------------------------------------

