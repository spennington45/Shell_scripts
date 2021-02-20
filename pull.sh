#!/bin/bash

# This is simple-mined script which is intended to be run in the students exercises
# folder. 
#sh
# It assumes individual student exercises folders are gathered under a single students
# exercises folder as shown below:
#
# /students-exercises/
# 	/adam-exercises/
#       /chris-exercises/
#	/jill-exercises/
#	/xaxier-exercises/
#  
# The script loops through all sub-folders ending with "-exercises", and assuming it 
# is a student's exercises folder, performs a Git pull from Bitbucket for the
# supposed student.
#
# It's a quick and easy way to refresh the students workspaces from Bitbucket.

for f in *
do
    if [ $f != "pull.sh" ]
    then
        echo "$f"
        cd "$f"
        # Stash any local changes such as code that was commented out to get a clean build and/or to run a test
        git stash
        # Now that any local changes have been stashed, should be safe to do pull without worrying about merge conflicts 
        git pull
        cd ..
    fi
done
