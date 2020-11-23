#!/bin/sh

# Author Steven Pennington
# v 1.0
# This script is to create a fork of a repo using bitbucket REST api

# User name of who is signing in and password
echo Username:
read username
echo Password:
read password
# The repo that will be forked
echo Main repository name:
read repoName
# Set the name of the fork i.e. module1-capstone-team
echo Fork names not including numbers:
read fork 
# The number of forks that will be made
echo How many forks will there be?
read forkNum
# The workspace id which can be username if this is a personal repo or the UUID of the project such as te-otw-2011
echo Workspace Id
read workspaceId
echo $username is creating $forkNum forks of the $repoName repo with the name of $fork and a number.

# Loop that creates the repos
for ((i=1; i<=$forkNum; i++))
do 
  curl -X POST -u $username:$password https://api.bitbucket.org/2.0/repositories/$workspaceId/$repoName/forks   -H 'Content-Type: application/json' -d '{
      "name": "'$fork''$i'",
      "workspace": {
        "slug": "'$workspaceId'"
      }
    }'
done
