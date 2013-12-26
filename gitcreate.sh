#!/bin/bash

# Modified by n-critser from the Below Author
# https://gist.github.com/robwierzbowski/5430952/

#curl -u 'USER' https://api.github.com/user/repos -d '{"name":"REPO"}'
# Remember replace USER with your username and REPO with your repository/application name!
#git remote add origin git@github.com:USER/REPO.git
#git push origin master
# Create and push to a new github repo from the command line.  
# Grabs sensible defaults from the containing folder and `.gitconfig`.  
# Refinements welcome.

# Gather constant vars
BASEDIR=${PWD}
CURRENTDIR=${PWD##*/}
echo "CREATING GIT REPO FOR  $BASEDIR" 

echo "ENTER git USER_ID"
read "GITHUBUSER"
#GITHUBUSER=$(git config github.user)
echo -n "GIT USER_ID = $GITHUBUSER\n"

# Get user input
echo "Enter Repo Name"
read "REPONAME"  #?New repo name (enter for ${PWD##*/}):"
echo "Creating Remote Repo = $REPONAME\n"
#read "USER?Git Username (enter for ${GITHUBUSER}):"
echo -n "Enter a desciption for this repo."
read -e "DESCRIPTION"

echo "Here we go..."

# Curl some json to the github API oh damn we so fancy
curl -u ${GITHUBUSER} https://api.github.com/user/repos -d "{\"name\": \"${REPONAME}\", \"description\": \"${DESCRIPTION}\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}"

# Set the freshly created repo to the origin and push
# You'll need to have added your public key to your github account
git remote add origin git@github.com:${GITHUBUSER}/${REPONAME}.git
git push origin master
