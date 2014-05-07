#!/bin/bash

project=${1-prototyping}
git clone git@github.com:qetc/prototyping $project
rm -rf $project/.git
cd $project
git init
git add .
git commit -m "initial commit"
git checkout -b development
bundle install
bower install
echo "Add a remote and get to it!"