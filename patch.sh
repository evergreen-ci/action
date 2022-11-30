#!/bin/sh -l

echo $1 > /.evergreen.yml
/evergreen --help
ls .evergreen.yml
wc .evergreen.yml
cat /.evergreen.yml
