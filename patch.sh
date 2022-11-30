#!/bin/sh -l

echo $EVERGREEN_AUTH | base64 -d > /.evergreen.yml
git config --global user.email "brian.samek@mongodb.com"
git config --global user.name "evergreen-ci/action GitHub action"
/evergreen -c /.evergreen.yml patch -p evergreen-action -v all -t all -y -f
