#!/usr/bin/env bash

# Variables
TRASH_PATH="~/.Trash"

if [ -z "$GITHUB_ORG" ]; then
    sudo shutdown -h now
fi

repo=${PWD##*/}

cd ..

mv $repo ~/$TRASH_PATH/$repo$(date)

git clone git@github.com:$GITHUB_ORG/$repo.git

cd $repo
