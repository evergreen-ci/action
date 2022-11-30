#!/bin/sh -l

echo $1 > /evergreen.yml
/evergreen --help
cat /evergreen.yml
