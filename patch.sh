#!/bin/sh -l

echo "hi" > /.evergreen.yml
/evergreen --help
ls .evergreen.yml
wc .evergreen.yml
cat /.evergreen.yml
