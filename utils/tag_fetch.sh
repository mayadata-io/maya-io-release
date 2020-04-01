#!/bin/sh
set -xe
current_dir=$(pwd)
reponame="$1"
branchname="$2"
git branch
git clone git@github.com:mayadata-io/"$reponame".git
cd $reponame
git checkout $branchname
var=$(git tag --sort=committerdate --merged $branchname | tail -1)
# oldIFS=$IFS     # Its an inter-field separator(IFS)
# IFS="."
# set -- $var
# IFS=$oldIFS
# new_tag="$fixed_tag""$(($3+1))"     # new_tag here is the updated tag after increment.
# echo $new_tag       # Showing  the output of new_tag variable.
# cd $current_dir
# rm -r $reponame
#echo $var
if [[ $var =~ ^[0-9].[0-9].[0-9]-(.*)$ ]];then  #tag for maya io master
    echo $var
elif [[ $TAG_NAME =~ ^[0-9].[0-9].[0-9]$ ]]; then
   echo $var
else
 echo ""
fi
cd $current_dir
rm -rf $reponame
