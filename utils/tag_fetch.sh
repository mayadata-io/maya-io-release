#!/bin/sh
set -x
current_dir=$(pwd)
branchname="$1"
var=$(git tag --sort=committerdate --merged $branchname | tail -1)
# oldIFS=$IFS     # Its an inter-field separator(IFS)
# IFS="."
# set -- $var
# IFS=$oldIFS
# new_tag="$fixed_tag""$(($3+1))"     # new_tag here is the updated tag after increment.
# echo $new_tag       # Showing  the output of new_tag variable.
# cd $current_dir
# rm -r $reponame
echo $var