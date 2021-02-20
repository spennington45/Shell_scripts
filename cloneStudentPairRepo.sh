#!/bin/bash

# Author Steven Pennington
# v 1.0 12
# Dependancies: curl, jq
#


echo Username
read username
echo Password
read password
echo workspace ID
read workspaceId

for f in `curl -u ${username}:${password} https://api.bitbucket.org/2.0/repositories/${workspaceId}?pagelen=100 | jq -r '.values[] | .links.clone[0].href'`
do
    if $f == *pair*
    then
    git clone $f
    fi
done
