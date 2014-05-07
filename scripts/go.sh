#!/bin/bash

git clone git@github.com:qetc/prototyping
rm -rf prototyping/.git
cd prototyping
git init
git add .
git commit -m "initial commit"
git checkout -b development
bundle install
bower install
echo "Add a remote and get to it!"