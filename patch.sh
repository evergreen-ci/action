#!/bin/sh -l

echo $EVERGREEN_AUTH | base64 -d > /.evergreen.yml
/evergreen -c ~/.evergreen.yml patch -p evergreen-action -v all -t all -y -f
