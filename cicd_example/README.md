# CICD
Basically we are going to create a Dockerfile that will contain build details

We will create Travis CI account, connect that to git hub and select a particular repo for monitoring

We will create .travis.yml file with build and run and deploy instruction for Travis CI to pull our repo, build it and deploy it to AWS elastic beanstack

Create a new repo in github named cicd
create a new account in travis-ci.org
Link github account with your travis-ci.org
You will see all the repo on the travs ci
select the cicd repo and switch for travis-ci to monitor
after few minutes, you should see cicd under Active Repositories
create .travis.yml file  without deploy
push it to git, you should see travis ci pulling the latest update and running the build process
create AWS elastic beanstalk 
issue a new access key id and access key
create those env variable in travis ci
now include deploy steps in .travis.yml file
push it to git
you should travis ci doing the build and deploy to aws


