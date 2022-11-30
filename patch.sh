#!/bin/sh -l

echo $EVERGREEN_AUTH > /.evergreen.yml
/evergreen --help
ls /.evergreen.yml
wc /.evergreen.yml
cat /.evergreen.yml
